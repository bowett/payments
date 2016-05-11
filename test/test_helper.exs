ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Payments.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Payments.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Payments.Repo)

