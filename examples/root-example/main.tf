module "example_com_search_console" {
  source = "github.com/adinhodovic/terraform-txt-record"

  cloudflare_zones = [
    {
      "zone_id" : "213123",
      "name" : "@",
      "value" : "google-site-verification=14P5CXSZMJhOqwk12lW9CZojRiak2Y8X0nRz7WQ46IKG43E44"
    }
  ]
}
