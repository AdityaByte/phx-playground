**endpoint (Phoenix.Endpoint)** - the endpoint contains the common and initial path that all requests go through. If you want something to happen on all requests, it goes to the endpoint.

**router (Phoenix.Router)** - the router is responsible for dispatching verb/path to controllers. The router also allows us to scope functionality. For example, some pages in your application may require user authentication, others may not.

**controller (Phoenix.Controller)** - the job of the controller is to retrieve request information, talk to your business domain, and prepare data for the presentation layer.

**view** - the view handles the structured data from the controller and converts it to a presentation to be shown to users. Views are often named after the content format they are rendering.