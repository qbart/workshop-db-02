class CreateFakeNumbers < ActiveRecord::Migration[5.1]
  def up
    execute %{
      create view abc as
        select
          chr(generate_series(65, 65 + 5 - 1)) as label,
          generate_series(1, 5) as value_a,
          generate_series(0, 9, 2) as value_b;

      create view xyz as
        select
          chr(generate_series(86, 86 + 5 - 1)) as label_reversed,
          generate_series(1, 9, 2) as value_a,
          generate_series(0, 9, 2) as value_b;
    }
  end

  def down
    execute %{
      drop view abc;
      drop view xyz;
    }
  end
end
