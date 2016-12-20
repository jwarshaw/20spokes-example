var ContactForm = React.createClass({ 
  displayName: "ContactForm",

  getInitialState: function() {
    return {firstName: '', lastName: '', email: '', message: ''};
  },

  handleFirstNameChange: function(event) {
    this.setState({firstName: event.target.value});
  },

  handleLastNameChange: function(event) {
    this.setState({lastName: event.target.value});
  },

  handleEmailChange: function(event) {
    this.setState({email: event.target.value});
  },

  handleMessageChange: function(event) {
    this.setState({message: event.target.value});
  },

  handleSubmit: function(event) {
    event.preventDefault();
    console.warn('submit has been triggered');

    //Submit to server and render success message to user

  },

  render: function() {
    return (
      <div className="container">
        <div className="col-sm-12">
          <form onSubmit={this.handleSubmit}>
          <label>
            First name:
              <input type="text" value={this.state.firstName} onChange={this.handleChange} />
            </label>
            <label>
              Last name:
              <input type="text" value={this.state.lastName} onChange={this.handleChange} />
            </label>
            <label>
              email:
              <input type="email" value={this.state.email} onChange={this.handleChange} />
            </label>
            <label>
              Message:
              <textarea value={this.state.message} onChange={this.handleMessageChange} />
            </label>
            <div className="actions">
              <button className="btn btn-primary">Submit</button>
            </div>
          </form>
        </div>
      </div>
    )
  }
})
