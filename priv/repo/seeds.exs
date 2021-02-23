# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CodeCamp.Repo.insert!(%CodeCamp.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias CodeCamp.Repo
alias CodeCamp.Teachers.Teacher

%Teacher{
  name: "Sam",
  surname: "Belmor",
  twitter: "sambelmor",
  image: "/images/profes/sam-belmor.jpg"
}
|> Repo.insert!()

%Teacher{
  name: "Angelito",
  surname: "",
  twitter: "angelittovzn",
  image: "/images/profes/angelito.jpg"
}
|> Repo.insert!()

%Teacher{
  name: "Valeria",
  surname: "Vichy",
  twitter: "valvitch",
  image: "/images/profes/valeria-vichy.jpg"
}
|> Repo.insert!()

%Teacher{
  name: "Karen",
  surname: "Molina",
  twitter: "voidrizoma",
  image: "/images/profes/karen-molina.jpg"
}
|> Repo.insert!()

%Teacher{
  name: "Diana",
  surname: "Martinez",
  twitter: "diana_nerd",
  image: "/images/profes/diana-nerd.png"
}
|> Repo.insert!()

%Teacher{
  name: "Alex",
  surname: "Camacho",
  twitter: "alexcamachogz",
  image: "/images/profes/alex-camacho.jpg"
}
|> Repo.insert!()

%Teacher{
  name: "Sebastian",
  surname: "Joya",
  twitter: "juansjoya",
  image: "/images/profes/sebastian.jpg"
}
|> Repo.insert!()

%Teacher{
  name: "Angelo",
  surname: "Leva",
  twitter: "angelolev",
  image: "/images/profes/angelo.jpg"
}
|> Repo.insert!()
