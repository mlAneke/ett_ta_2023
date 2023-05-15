mammals = ["cat", "dog", "cow"]
birds=    ["eagle",    "falcon",    "ladybird"]

user1=    "peter"
user2=    "bruce"
user3=    "tony"


def Loop_over_list(anyList):
    for var in anyList:
        print(var)

#Loop_over_list(mammals)
#Loop_over_list(birds)

def Loop_over_two_lists_after_each_other(mammals, birds):
    print("3 mammals & three birds:")
    Loop_over_list(mammals)
    Loop_over_list(birds)



#Loop_over_two_lists_after_each_other(mammals, birds)

def print_multipleValues(user1, user2, user3):
    """ print("3 users:")
    print(user1)
    print(user2)
    print(user3) """

    listOfUsers= [user1, user2, user3, "Daniel"]

    for user in listOfUsers:
        print(user)


print_multipleValues(user1, user2, user3)