require('spec_helper')

describe(Project) do
  describe('#employees') do
    it("tells which employees are on the project") do
      test_project = Project.create({:description => "project"})
      test_employee = Employee.create({:name => "Ardus", :project_id => test_project.id})
      test_employee.save()
      test_employee2 = Employee.create({:name => "Ardus2", :project_id => test_project.id})
      test_employee2.save()
      expect(test_project.employees()).to(eq([test_employee, test_employee2]))
    end
  end
end
