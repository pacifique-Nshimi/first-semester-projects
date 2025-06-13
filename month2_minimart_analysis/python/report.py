# Code to generate dictionary summary reports

def create_report(orders):
    report = {
        'Total number of products sold': len(orders),
        'Most popular product': max(set(order['product'] for order in orders), key = (lambda x: [order['product'] for order in orders].count(x))),
        'Revenue per customer': {customer: sum(float(order['price']) for order in orders if order['customer'] == customer) for customer in set(order['customer'] for order in orders)}
    }
    return report
