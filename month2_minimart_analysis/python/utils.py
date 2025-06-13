# Utility functions for data conversion and filtering
def apply_discount(orders):
    for order in orders:
        order['price'] = float(order['price']) * 0.9  # Applying a 10% discount