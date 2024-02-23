from faker import Faker
from faker_commerce import Provider

fake = Faker()
fake.add_provider(Provider)


def main():
    ventas_diciembre = fake.ecommerce_sale(month=12)

    for producto in ventas_diciembre:
        print(
            f"Producto: {producto['product']}, Unidades: {producto['units']}, Precio: ${producto['price']}, Costo: ${producto['cost']}, Fecha: {producto['year']}-{producto['month']}-{producto['day']}")


if __name__ == "__main__":
    main()
