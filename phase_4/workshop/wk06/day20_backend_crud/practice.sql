> use blog;
switched to db blog

> db.createCollection("user");
{ "ok" : 1 }

> db.user.insert({
... username: "mochadwi",
... email: "mochadwi20@gmail.com",
... alamat: "Coblong",
... password: "asdfqwerty",
... hobi: [
... "bola", "makan"]
... });
WriteResult({ "nInserted" : 1 })

> db.user.find().pretty();
{
	"_id" : ObjectId("582ff9751e15ebad2ee8f838"),
	"username" : "mochadwi",
	"email" : "mochadwi20@gmail.com",
	"alamat" : "Coblong",
	"password" : "asdfqwerty",
	"hobi" : [
		"bola",
		"makan"
	]
}