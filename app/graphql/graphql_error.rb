# frozen_string_literal: true

module GraphqlError
  private

  def graphql_error(message:, type:)
    raise GraphQL::ExecutionError.new(message, extensions: { code: ERRORS[type] })
  end
end
