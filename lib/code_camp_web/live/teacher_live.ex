defmodule CodeCampWeb.TeacherLive do
  use CodeCampWeb, :live_view

  alias CodeCamp.{Teachers}

  def mount(_params, _session, socket) do
    teachers = Teachers.list_teachers()

    socket =
      assign(socket,
          teachers: teachers,
          selected_teacher: hd(teachers)
      )

    {:ok, socket}
  end

  def handle_params(%{"id" => id}, _url, socket) do
    id = String.to_integer(id)

    teacher = Teachers.get_teacher!(id)

    socket =
      assign(socket,
        selected_teacher: teacher,
        page_title: "#{teacher.name}"
      )

    {:noreply, socket}
  end

  def handle_params(_, _url, socket) do
    {:noreply, socket}
  end

  def render(assigns) do
    ~L"""
    <h1 class="pb-8 px-2 text-2xl text-center uppercase font-bold leading-tight text-blue-900">Tus profesores</h1>
    <div id="teachers">
      <div class="sidebar">
        <nav>
          <%= for teacher <- @teachers do %>
            <div>
              <%= live_patch link_body(teacher),
                    to: Routes.teacher_path(
                              @socket,
                              :index,
                              id: teacher.id
                        ),
                    class: if teacher == @selected_teacher, do: "active" %>
            </div>
          <% end %>
        </nav>
      </div>
      <div class="main">
        <div class="wrapper">
          <div class="card">
            <div class="header">
              <h2><%= @selected_teacher.name %> <%= @selected_teacher.surname %></h2>
              <span class="<%=  %>">
                <%=  %>
              </span>
            </div>
            <div class="body">
              <div class="row">
                <div class="person">
                  <img src="<%= @selected_teacher.image%>">
                  <span>
                    <%=  %>
                  </span>
                </div>
              </div>
           <!--   <h3>
                Twitter
              </h3> -->
              <div class="socials">
              <button class="btn btn-icon btn-twitter mr-2"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg></button>
                @<%= @selected_teacher.twitter %>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end

  defp link_body(teacher) do
    assigns = %{name: teacher.name}

    ~L"""
      <img src="/images/profes.png" alt="">
      <%= @name %>
    """
  end

end
