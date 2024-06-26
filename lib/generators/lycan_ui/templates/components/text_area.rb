# frozen_string_literal: true

class TextArea < ApplicationComponent
  attr_accessor :object_name, :method, :type

  erb_template <<~ERB
    <%%= text_area(object_name, method, attributes) %>
  ERB

  def initialize(object_name, method, **attributes)
    @object_name = object_name
    @method = method

    attributes[:class] = class_names(
      "flex min-h-[5rem] w-full rounded-md border border-black px-3 py-2 text-sm " \
        "file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground " \
        "focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-black focus-visible:ring-offset-2 " \
        "disabled:cursor-not-allowed disabled:opacity-50",
      attributes[:class],
    )

    super(**attributes)
  end
end
