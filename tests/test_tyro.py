import tyro

def add(a: int, b: int = 3) -> int:
    return a + b

total = tyro.cli(add)
print(total)
