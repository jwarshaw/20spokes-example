var ContactForm = React.createClass({ 
  displayName: "ContactForm",

  getInitialState: function() {
    return {firstName: '', lastName: '', email: '', message: ''};
  },

  handleSubmit: function(event){
    event.preventDefault();
    console.warn('submit has been triggered');

    //Submit to server and render success message to user

  },

  render: function(){
    return (
      <div className="container">
        <div className="col-sm-12">
          <form onSubmit={this.handleSubmit}>
          <label>
            First name:
              <input type="text" name="first-name" />
            </label>
            <label>
              Last name:
              <input type="text" name="last-name" />
            </label>
            <label>
              email:
              <input type="email" name="email" />
            </label>
            <label>
              Message:
              <textarea value={this.state.message} onChange={this.handleChange} />
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
