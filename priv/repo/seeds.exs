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
  image: "/images/profes/sam-belmor.jpg",
  name: "Sam",
  surname: "Belmor",
  twitter: "sambelmor",
  twitter_link: "https://twitter.com/sambelmor",
}
|> Repo.insert!()

%Teacher{
  image: "/images/profes/angelito.jpg",
  name: "Angelito",
  surname: "",
  twitter: "angelittovzn",
  twitter_link: "https://twitter.com/angelittovzn",

}
|> Repo.insert!()

%Teacher{
  image: "/images/profes/valeria-vichy.jpg",
  name: "Valeria",
  surname: "Vichy",
  twitter: "valvitch",
  twitter_link: "https://twitter.com/valvitch",

}
|> Repo.insert!()

%Teacher{
  image: "/images/profes/karen-molina.jpg",
  name: "Karen",
  surname: "Molina",
  twitter: "voidrizoma",
  twitter_link: "https://twitter.com/voidrizoma",

}
|> Repo.insert!()

%Teacher{
  image: "/images/profes/diana-nerd.png",
  name: "Diana",
  surname: "Martinez",
  twitter: "diana_nerd",
  twitter_link: "https://twitter.com/diana_nerd",

}
|> Repo.insert!()

%Teacher{
  image: "/images/profes/alex-camacho.jpg",
  name: "Alex",
  surname: "Camacho",
  twitter: "alexcamachogz",
  twitter_link: "https://twitter.com/alexcamachogz",

}
|> Repo.insert!()

%Teacher{
  image: "/images/profes/sebastian.jpg",
  name: "Sebastian",
  surname: "Joya",
  twitter: "juansjoya",
  twitter_link: "https://twitter.com/juansjoya",
}
|> Repo.insert!()

%Teacher{
  image: "/images/profes/angelo.jpg",
  name: "Angelo",
  surname: "Leva",
  twitter: "angelolev",
  twitter_link: "https://twitter.com/angelolev",

}
|> Repo.insert!()
%Teacher{
  image: "/images/profes/manuel.png",
  name: "Manuel",
  surname: "Gil",
  twitter: "imgildev",
  twitter_link: "https://twitter.com/imgildev",

}
|> Repo.insert!()
