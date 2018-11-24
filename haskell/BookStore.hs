data BookInfo = Book Int String [String]
                deriving (Show)

data MagzineInfo = Magzine Int String [String]
                   deriving (Show)

myinfo = Book 55 "fivefive" ["five","five"]

data BookReview = BookReview BookInfo CustomerID String

type CustomerID = Int
type ReviewBody = String

data BatterReview = BetterReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)

data Bool = False | True

type CardHolder = String
type CardNumber = String
type Address = [String]
data BillingInfo = CreditCard CardNumber CardHolder Address
                | CashOnDelivery
                | Invoice CustomerID
                    deriving(Show)

data Enumm = Int | String |Integer

data Customer = Customer {
    customerID :: CustomerID,
    customerName :: String,
    customerAddress :: Address
}

customer1 = Customer 181009 "SsuperLG" ["CN","GD","SZ"]

customer2 = Customer {
    customerID = 181009,
    customerAddress = ["CN","GD","SZ"],
    customerName = "SsuperLG2"
}

