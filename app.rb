# first install gem bellow
# gem install openai

require "openai"

client = OpenAI::Client.new(access_token: "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")

puts "What you do know today?"
question = gets

response = client.chat(
    parameters: {
        model: "gpt-3.5-turbo", # Required.
        messages: [{ role: "user", content: question}], # Required.
        temperature: 0.7,
    })
puts response.dig("choices", 0, "message", "content")