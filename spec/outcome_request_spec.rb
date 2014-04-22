require "spec_helper"
describe IMS::LTI::OutcomeRequest do
  before do
    create_test_tp
  end

  it "should post the replaceResult request" do
    mock_request(replace_result_xml)
    @tp.post_replace_result!(5)
    @tp.last_outcome_success?.should == false
  end

  it "should post readResult request" do
    mock_request(read_result_xml)
    @tp.post_read_result!
  end

  it "should post deleteResult request" do
    mock_request(delete_result_xml)
    @tp.post_delete_result!
  end

  it "should parse replaceResult xml" do
    req = IMS::LTI::OutcomeRequest.new
    req.process_xml(replace_result_xml)
    req.operation.should == 'replaceResult'
    req.lis_result_sourcedid.should == '261-154-728-17-784'
    req.message_identifier.should == '123456789'
    req.score.should == '5'
  end

  it "should parse readResult xml" do
    req = IMS::LTI::OutcomeRequest.new
    req.process_xml(read_result_xml)
    req.operation.should == 'readResult'
    req.lis_result_sourcedid.should == '261-154-728-17-784'
    req.message_identifier.should == '123456789'
    req.score.should == nil
  end

  it "should parse deleteResult xml" do
    req = IMS::LTI::OutcomeRequest.new
    req.process_xml(delete_result_xml)
    req.operation.should == 'deleteResult'
    req.lis_result_sourcedid.should == '261-154-728-17-784'
    req.message_identifier.should == '123456789'
    req.score.should == nil
  end

end
