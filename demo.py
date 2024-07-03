class MoiMoi:
    def __init__(self, name, description):
        self.name = name
        self.description = description

    def something(name, description):
        print(f"{name} - {description}")


    def __str__(self):
        return f"{self.name} - {self.description}"
    

dme = MoiMoi("John", "Name of the male gender")
print(dme)
MoiMoi.something()