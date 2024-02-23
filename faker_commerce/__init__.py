import random
import faker.providers

PRODUCT_DATA = {
    'material': [
        "Steel",
        "Wooden",
        "Concrete",
        "Plastic",
        "Cotton",
        "Granite",
        "Rubber",
        "Metal",
        "Soft",
        "Fresh",
        "Frozen"
    ],
    'product': [
        "Chair",
        "Car",
        "Computer",
        "Keyboard",
        "Mouse",
        "Bike",
        "Ball",
        "Gloves",
        "Pants",
        "Shirt",
        "Table",
        "Shoes",
        "Hat",
        "Towels",
        "Soap",
        "Tuna",
        "Chicken",
        "Fish",
        "Cheese",
        "Bacon",
        "Pizza",
        "Salad",
        "Sausages",
        "Chips"
    ],
    'adjective': [
        "Small",
        "Ergonomic",
        "Rustic",
        "Intelligent",
        "Gorgeous",
        "Incredible",
        "Fantastic",
        "Practical",
        "Sleek",
        "Awesome",
        "Generic",
        "Handcrafted",
        "Handmade",
        "Licensed",
        "Refined",
        "Unbranded",
        "Tasty",
        "New",
        "Gently Used",
        "Used",
        "For repair"
    ]
}


class Provider(faker.providers.BaseProvider):

    def ecommerce_sale(self, month: int = None):
        sale = []

        if month is None:
            month = self.random_int(min=1, max=12)

        for _ in range(self.random_int(min=1, max=4)):
            product = self.ecommerce_name_product()
            price = self.ecommerce_price_product()
            cost = self.ecommerce_cost_product()
            units = self.random_int(min=1, max=10)

            # Date
            day = self.random_int(min=1, max=28)
            year = self.random_int(min=2022, max=2024)

            sale.append({
                'product': product,
                'price': price,
                'cost': cost,
                'units': units,
                'year': year,
                'month': month,
                'day': day
            })

        return sale

    def ecommerce_name_product(self):
        """Fake product names."""
        product = self.random_element(PRODUCT_DATA['product'])
        adjective = self.random_element(PRODUCT_DATA['adjective'])
        material = self.random_element(PRODUCT_DATA['material'])

        choices = [
            product,
            " ".join([adjective, product]),
            " ".join([material, product]),
            " ".join([adjective, material, product]),
        ]

        names = random.choices(choices, k=1)
        return names[0]

    def ecommerce_price_product(self, as_int: bool = True):
        n = self.random_int(min=100, max=99999999)
        return round(n, 2) if as_int else n / 100

    def ecommerce_cost_product(self, as_int: bool = True):
        n = self.random_int(min=1, max=99)
        return round(n, 2) if as_int else n / 100
