defmodule Messengyr.Web.MessageView do
  use Messengyr.Web, :view

  def message_json(message, %{me: me}) do
    %{
      id: message.id,
      text: message.text,
      sentAt: message.inserted_at,
    }
  end
end
