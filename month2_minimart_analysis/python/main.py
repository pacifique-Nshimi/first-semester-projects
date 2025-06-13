# Entry point for the MiniMart data reporting system

from report import create_report
from utils import apply_discount

# Create lists or dictionaries to simulate new order data
orders = [
    {'customer': 'Customer1', 'product': 'Product1', 'price': '10.99'},
    {'customer': 'Customer2', 'product': 'Product2', 'price': '20.50'},
    {'customer': 'Customer1', 'product': 'Product3', 'price': '15.75'},
    # Add more orders as needed
]

# Convert product prices from string to float and apply discounts
apply_discount(orders)

# Create a dictionary report summarizing
report = create_report(orders)

# Display the report
print(report)