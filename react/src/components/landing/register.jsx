import React from "react";

function Profile() {
  // Insert JS Code here

  // Insert JS Code here
  return (
    //insert HTML Code below
    <React.Fragment>
      <div className="container">
        <h2 className="">Register</h2>

        <form className="needs-validation" novalidate>
          <div className="row">
            <div className="col-md-4 mb-3">
              <label for="validationTooltip01">First name</label>
              <input
                type="text"
                className="form-control"
                id="validationTooltip01"
                placeholder="First name"
                required
              />
              <div className="valid-tooltip">Looks good!</div>
            </div>
            <div className="col-md-4 mb-3">
              <label for="validationTooltip02">Last name</label>
              <input
                type="text"
                className="form-control"
                id="validationTooltip02"
                placeholder="Last name"
                required
              />
              <div className="valid-tooltip">Looks good!</div>
            </div>
          </div>
          <div className="row">
            <div className="col-md-3 mb-3">
              <label for="validationTooltip03">City</label>
              <input
                type="text"
                className="form-control"
                id="validationTooltip03"
                placeholder="City"
                required
              />
              <div className="invalid-tooltip">
                Please provide a valid city.
              </div>
            </div>
            <div className="col-md-3 mb-3">
              <label for="validationTooltip04">State</label>
              <input
                type="text"
                className="form-control"
                id="validationTooltip04"
                placeholder="State"
                required
              />
              <div className="invalid-tooltip">
                Please provide a valid state.
              </div>
            </div>
            <div className="col-md-2 mb-3">
              <label for="validationTooltip05">Zip</label>
              <input
                type="text"
                className="form-control"
                id="validationTooltip05"
                placeholder="Zip"
                required
              />
              <div className="invalid-tooltip">Please provide a valid zip.</div>
            </div>
          </div>

          <div className="row">
            <div className="form-group col-md-6">
              <label for="exampleInputEmail1">Email address</label>
              <input
                type="email"
                className="form-control"
                id="exampleInputEmail1"
                aria-describedby="emailHelp"
                placeholder="Enter email"
                required
              />
              <small id="emailHelp" className="form-text text-muted">
                We'll never share your email with anyone else.
              </small>
            </div>
            <div className="col-md-3 mb-3">
              <label for="validationTooltipUsername">Username</label>
              <div className="input-group">
                <div className="input-group-prepend">
                  <span
                    className="input-group-text"
                    id="validationTooltipUsernamePrepend"
                  >
                    @
                  </span>
                </div>
                <input
                  type="text"
                  className="form-control"
                  id="validationTooltipUsername"
                  placeholder="Username"
                  aria-describedby="validationTooltipUsernamePrepend"
                  required
                />
                <div className="invalid-tooltip">
                  Please choose a unique and valid username.
                </div>
              </div>
            </div>
          </div>

          <div className="row">
            <div className="form-group col-md-4">
              <label for="exampleInputPassword1">Password</label>
              <input
                type="password"
                className="form-control"
                id="exampleInputPassword1"
                placeholder="Password"
                required
              />
            </div>
            <div className="col-md-4">
              <label for="exampleInputPassword2">Confirm Password</label>
              <input
                type="password"
                className="form-control"
                id="exampleInputPassword2"
                placeholder="Password"
                required
              />
            </div>
          </div>

          <div className="form-group">
            <div className="form-check">
              <input
                className="form-check-input is-invalid"
                type="checkbox"
                value=""
                id="invalidCheck3"
                required
              />
              <label className="form-check-label" for="invalidCheck3">
                Agree to terms and conditions
              </label>
              <div className="invalid-feedback">
                You must agree before submitting.
              </div>
            </div>
          </div>
          <button type="submit" className="btn btn-primary">
            Register
          </button>
        </form>
      </div>
    </React.Fragment>
    //insert HTML Code above
  );
}

export default Profile;
