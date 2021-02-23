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
    <h1>Teachers</h1>
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
              <h3>Twitter</h3>
              <div class="repo">
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
