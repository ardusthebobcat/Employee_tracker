require('spec_helper')

describe(Employee) do
  describe('#name') do
    it("outputs the name of an employee") do
      test_employee = Employee.new({:name => "Billy"})
      test_employee.save()
      expect(Employee.all()).to(eq([test_employee]))
    end
  end
end
