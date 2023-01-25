from faker import Faker
import numpy as np



def page180_3():
    fake = Faker("de_DE")
    export = []
    #Declare custom things
    department = ["Buchhaltung", "Consulting", "Entwicklung", "Vertrieb", "HR", "Produktion"]
    weights= [0.15, 0.1, 0.1,0.15,0.2, 0.3]
    salary = [i for i in range(1,11)]
    weights_salary = [0.15, 0.15, 0.25, 0.25, 0.1, 0.05, 0.03, 0.01, 0.005, 0.005]
    #S.180|3
    for i in range(1,1501):
        to_append = [
            str(i) + ";", #MNr
            fake.first_name()+ ";", #Name
            fake.last_name()+ ";", #Vorname
            str(np.random.choice(department, p=weights))+ ";", #Abteilung
            str(np.random.choice(salary, p=weights_salary)) #Gehaltsstufe
        ]
        to_append[4] = to_append[4] + "\n"
        export.append(to_append)
    return export

def page180_1():
    fake = Faker()
    export = []
    #Custom Stuff
    gender = ["m", "w"]
    gender_weights = [0.5,0.5]
    age = [1,2,3,4]
    age_weights= [0.2,0.3,0.3,0.2]
    rng = np.random.default_rng(12345)
    #Generate actual data
    for i in range(1, 1501):
        to_append = [
            str(i) + ";", #Nr
            fake.last_name()+";", #Name
            fake.first_name()+";", #Vorname
            str(np.random.choice(gender, p=gender_weights)) + ";", #m_w
            str(np.random.choice(age, p=age_weights))+";", #Alterklasse
            str(1) #dummy Altersklasse
        ]
        match to_append[4]:
            case "1;":
                to_append[5] = str(round(rng.random()+0.8,2))
            case "2;":
                to_append[5] = str(round(rng.random()+0.9,2))
            case "3;":
                to_append[5] = str(round(rng.random()+1,2))
            case "4;":
                to_append[5] = str(round(rng.random()+1.3,2))
        to_append[5] += "\n"
        export.append(to_append)
    return export

def page180_5():
    fake = Faker()
    export = []
    #Custom Stuff
    gender = ["m", "w"]
    gender_weights = [0.5,0.5]
    year = [5,6,7,8,9,10,11,12,13]
    year_weights=[0.1,0.15,0.15,0.1,0.1,0.1,0.1,0.1,0.1]
    #Generate actual data
    for i in range(1, 101):
        y = np.random.choice(year, p=year_weights) 
        age = y + 5 + np.random.randint(0,2)
        to_append = [
            str(i) + ";",#SNr,0
            fake.last_name() + ";", #Name,1
            fake.first_name()+ ";", #Vorname,2
            str(np.random.choice(gender, p=gender_weights)) + ";", #Geschlecht,3
            str(y)+";", #Jahrgangsstufe,4
            str(age)+";", #age
            str(2), #dummy Stimmlage,6
        ]
        match to_append[3]:
            case "m;":
                if int(to_append[4].replace(";", "")) > 9:
                    prob = [0.4,0.5,0.1,0]
                else: 
                    prob = [0.05, 0.55, 0.3,0.1]
                to_append[6] = np.random.choice(["Bass", "Tenor", "Alt", "Sopran"], p=prob)
            case "w;":
                if int(to_append[4].replace(";", "")) > 9:
                    prob = [0.8, 0.2]
                else:
                    prob =  [0.2, 0.8]
                to_append[6] = np.random.choice(["Alt", "Sopran"], p=prob)
        to_append[6]+="\n"
        export.append(to_append)
    return export

if __name__ == "__main__":
    f = Faker()
    d = dir(f)
    with open("functions.txt", "w", encoding="utf8") as f:
        for line in d:
            f.writelines(line + "\n")
    #export = page180_3()
    #with open("180_3.csv", "w", encoding="utf8") as f:
    #    for line in export:
    #        f.writelines(line)

