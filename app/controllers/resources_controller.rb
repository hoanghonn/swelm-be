class ResourcesController < ApplicationController
  def index
    @resources = Resource.all

    render json: @resources
  end

  def new
  end

  def show
  end

  def create
    @resource = Resource.new(url: params[:url])
    content = extract_visible_text(@resource.url)
    summarized_content = summarize_content_w_gemini(content)
    @resource.description = summarized_content

    if @resource.save
      render json: @resource, status: :created, location: url_for(@resource)
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def extract_visible_text(url)
    response = HTTParty.get(url)
    html = response.body

    doc = Nokogiri::HTML(html)

    # Remove scripts, styles, navs, footers, etc.
    doc.css("script, style, nav, footer, header, noscript").remove

    # Extract all text, strip extra spaces, remove blank lines
    text = doc.text
              .gsub(/\s+/, " ")   # Collapse whitespace
              .gsub(/\n+/, "\n")  # Normalize line breaks
              .strip

    text
  end

  def summarize_content_w_gemini(content)
    gemini_key = ENV["GEMINI_API_KEY"]
    response = HTTParty.post(
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=#{gemini_key}",
      headers: { "Content-Type" => "application/json" },
      body: {
        contents: [
          {
            parts: [
              { text: "I am a software engineer. I need you to summarize the following paragraph: #{content}. Do not preface your answer or say anything extra."  }
            ]
          }
        ]
      }.to_json
    )

    json_response = JSON.parse(response.body)
    return if json_response["error"]
    json_response.dig("candidates", 0, "content", "parts", 0, "text")
  end
end
