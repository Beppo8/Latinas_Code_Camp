defmodule CodeCamp.Emails do
  import Bamboo.Email
  use Bamboo.Phoenix, view: CodeCampWeb.EmailView

  @from "test@example.com"

  def welcome_email(%{email: email}) do
    base_email()
    |> subject("Welcome!")
    |> to(email)
    |> render("welcome.html", title: "Gracias por registrarte a Latinas Code Camp", preheader: "Gracias por registrarte")
    |> premail()
  end

  defp base_email do
    new_email()
    |> from(@from)
    |> put_html_layout({CodeCampWeb.LayoutView, "email.html"}) # Set default layout
    |> put_text_layout({CodeCampWeb.LayoutView, "email.text"}) # Set default text layout
  end

  defp premail(email) do
    html = Premailex.to_inline_css(email.html_body)
    text = Premailex.to_text(email.html_body)

    email
    |> html_body(html)
    |> text_body(text)
  end
end
