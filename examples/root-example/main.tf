module "example_com_search_console" {
  source = "github.com/adinhodovic/terraform-search-console"

  cloudflare_domains = [
    {
      "domain" : "example.com",
      "site_verification" : "google-site-verification=14P5CXSZMJhOqwk12lW9CZojRiak2Y8X0nRz7WQ46IKG43E44"
    }
  ]
}
