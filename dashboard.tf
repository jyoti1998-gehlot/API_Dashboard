resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "my-dashboard-ec233"

  dashboard_body = <<EOF
{
  "widgets": [
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/ApiGateway",
            "4XXError",
            "name",
            "${var.example}"
          ]
        ],
        "period": 60,
        "stat": "Sum",
        "region": "us-west-2",
        "title": ""
      }
    },
    {
      "type": "text",
      "x": 0,
      "y": 7,
      "width": 3,
      "height": 3,
      "properties": {
        "markdown": "Hello world"
      }
    }
  ]
}
EOF
}