require('rspec')
require('jobs')

describe(Jobs) do
  describe("#past_job") do
    it("lets you enter a job you've had") do
      test_job = Jobs.new("Barista", "Fun")
      expect(test_job.past_job()).to(eq("Barista"))
    end
  end
    describe("#description") do
      it("lets you enter a description of a job you've had") do
        test_job = Jobs.new("Barista", "Fun")
        expect(test_job.description()).to(eq("Fun"))
      end
    end

    describe('.all') do
      it("is empty at first") do
        expect(Jobs.all()).to(eq([]))
      end
    end

    describe('#save') do
      it("adds a job and description to the array of saved jobs and descriptions") do
        test_job = Jobs.new("Barista", "Fun")
        test_job.save()
        expect(Jobs.all()).to(eq(["Barista", "Fun"]))
      end
    end

    describe(".clear") do
      it("empties out all the saved tasks") do
        Jobs.new("Barista", "Fun").save
        Jobs.clear()
        expect(Jobs.all()).to(eq([]))
      end
    end
end
