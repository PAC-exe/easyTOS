require "openai"
input = gets.chomp()
client = OpenAI::Client.new(access_token: "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")

response = client.chat(
    parameters: {
        model: "gpt-3.5-turbo", # Required.
        messages: [{ role: "user", content: "#{input}"}], # Required.
        temperature: 0.7,
    })
puts response.dig("choices", 0, "message", "content")
# => "Hello! How may I assist you today?"