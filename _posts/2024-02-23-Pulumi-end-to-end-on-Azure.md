---
title : Pulumi vs Terraform. An In-Depth Comparison.
short-title : Pulumi vs Terraform
description: Terraform and Pulumi are key players in the IaC arena, each offering unique features for infrastructure automation.
Date :  2024-02-23
author: asnocode.com
layout: post
image: assets/images/posts/2024-02-23-Pulumi-end-to-end-on-Azure/banner.jpg
image-alt: Pulumi
image-source: Source - env0.com.
permalink: /posts/2024/02/Pulumi-end-to-end-on-Azure/
tags: pulumi terraform iac cloud
page-level: postpage
sitemap: false
---
 
<!-- Add images to assets/images/posts/2024-02-23-Pulumi-end-to-end-on-Azure -->
<!-- Body of your blog post goes here -->
<p>The world of <a href="https://www.env0.com/blog/infrastructure-as-code-101">Infrastructure-as-Code (IaC)</a> has evolved by leaps and bounds. With a growing number of IaC tools available, DevOps teams often find themselves weighing the pros and cons of popular choices that pits Pulumi vs Terraform and others.</p><p>In this blog, I’ll take a deep dive into the features, similarities, differences, and real-world use cases of <a href="https://www.env0.com/blog/terraform-tutorial">Terraform</a> and <a href="https://www.env0.com/blog/what-is-pulumi-and-how-to-use-it-with-env0">Pulumi</a>. Specifically, I’m going to focus on the following:</p><ul role="list"><li><strong>Comparison of Pulumi and Terraform:</strong> I’ll cover features, language flexibility, and community support.</li><li><strong>Languages</strong>: Terraform utilizes its own HCL while Pulumi supports multiple common programming languages. I will review how these differences in approach to state management can make one more suitable than the other.</li><li><strong>Real-world examples</strong>: I’ll demonstrate how both tools can be used for managing cloud infrastructure across multiple platforms securely.</li></ul><p>So, buckle up as we explore the fascinating world of Pulumi and Terraform.<br><br><strong>Video Walkthrough</strong></p><figure class="w-richtext-figure-type-video w-richtext-align-fullwidth" style="padding-bottom:56.33802816901409%"><div><iframe allowfullscreen="true" frameborder="0" scrolling="no" src="https://player.vimeo.com/video/875583090" title="Pulumi vs Terraform: An In-Depth Comparison"></iframe></div></figure><p><strong>My Setup</strong></p><ol role="list"><li><strong>A GitHub account:</strong> I’ll use GitHub Codespaces with all necessary tools installed for you.</li><li><strong>Repository: </strong>TL;DR: You can find<a href="https://github.com/samgabrail/pulumi-vs-terraform"> the main repo here.</a></li></ol><h2><strong>Understanding Infrastructure-as-Code (IaC)</strong></h2><p>For posterity, remember that Infrastructure-as-Code provisions infra resources using preset configuration files instead of manually.&nbsp;</p><p>The beauty of IaC lies in its ability to treat infrastructure like code, allowing us to manage it with the same processes, tools, and programming languages as application code.&nbsp;</p><p>This enables us to leverage software development practices like version control, testing, and automation throughout the infrastructure provisioning lifecycle, making it easier to allocate infrastructure resources efficiently.</p><h2><strong>Pulumi vs. Terraform</strong></h2><p>Terraform and Pulumi are key players in the IaC arena, each offering unique features for infrastructure automation. Terraform shines in its broad compatibility with cloud providers such as <a href="https://www.env0.com/blog/deploying-amazon-elastic-kubernetes-service-aws-eks-with-terraform">AWS</a>, <a href="https://www.env0.com/blog/how-to-integrate-azure-devops-with-env0">Azure</a>, and <a href="https://docs.env0.com/docs/gcp-logging">GCP</a>.&nbsp;</p><p>The use of its domain-specific language, Hashicorp Configuration Language (HCL), lets you adopt software engineering practices in managing infrastructure with Terraform. It operates on a declarative model, focusing on what the end state of the infrastructure should look like.</p><p>Pulumi, on the other hand, aims to deliver a developer-centric experience by offering support for multiple languages including TypeScript, Go, .NET, Python, and Java. Its architecture is equipped with essentials such as a language host, command-line interface, and state management capabilities.</p><p>While Terraform specializes in a focused, declarative approach with its HCL, Pulumi offers broader language support and flexibility, making each tool uniquely suited for various cloud computing tasks and environments.</p><h3><strong>Key Features Comparison</strong></h3><p>Terraform stands out with a broad set of features such as its declarative approach, extensive platform support, and a wealth of community <a href="https://www.env0.com/blog/terraform-modules">modules</a>.&nbsp;</p><p>It allows users to express infrastructure requirements in a simple yet powerful way and integrates with a diverse selection of plugins and tools created by the community.</p><p>Meanwhile, with its user-friendly interface, extensive integrations, and native provider support, Pulumi becomes a compelling choice for developers working with Infrastructure-as-Code.</p><p>One of Pulumi’s standout features is its Dynamic Provider Support, which enables the tool to create Terraform providers and support new resources and features at a much faster pace than Terraform.&nbsp;</p><p>This allows Pulumi to stay up-to-date with the latest cloud or SaaS features and resources, ensuring developers can access cutting-edge tools and technologies.</p><p>Here is a high-level comparison of the two tools:</p><div class="w-embed"><div class="table-stroke"><div><table class="table__component">

<thead class="table__head"><tr class="table__row"><th class="table__header"></th><th class="table__header">Pulumi</th><th class="table__header">Terraform</th></tr></thead>

<tbody class="table__body">

<tr class="table__row"><td class="table__cell cc-feature" width="26%">Configuration Language
</td><td class="table__cell" width="37%">Multiple: Python, JavaScript, TypeScript, Go, C#, F#, YAML</td><td class="table__cell">Hashicorp Configuration Language (HCL)
</td></tr>

<tr class="table__row"><td class="table__cell cc-feature">Plugins</td><td class="table__cell">Compatible with Terraform providers and has its own Pulumi providers</td><td class="table__cell">Large ecosystem of Terraform providers</td></tr>

<tr class="table__row"><td class="table__cell cc-feature">State Management</td><td class="table__cell">Pulumi Cloud hosts state by default, with option to move hosting to another cloud service or manage manually</td><td class="table__cell">State is manually managed manually JSON state files (<b>terraform.tfstate</b>)</td></tr>

<tr class="table__row"><td class="table__cell cc-feature">State Encryption</td><td class="table__cell">Encrypted by default</td><td class="table__cell">Unencrypted by default (premium feature)</td></tr>

<tr class="table__row"><td class="table__cell cc-feature">Testing</td><td class="table__cell">Unit, property, and integration testing, also compatible with external testing framework</td><td class="table__cell">Integration testing, new testing feature as of v1.6.0</td></tr>

<tr class="table__row last-row"><td class="table__cell cc-feature">Integration</td><td class="table__cell">Native integration for the available config languages</td><td class="table__cell">Third-party scripts</td></tr>

</tbody></table></div></div><h3><strong>Pros &amp; Cons</strong></h3><p>Another way to look at the two tools is to pit their pros and cons against each other. I do that here in this chart, that dives a little deeper into the contrasts of the previous section.</p><div class="w-embed"><div class="table-stroke"><div><table class="table__component">

<thead class="table__head"><tr class="table__row"><th class="table__header"></th><th class="table__header">Pulumi</th><th class="table__header">Terraform</th></tr></thead>

<tbody class="table__body">

<tr class="table__row">
<td style="text-align: center;" class="table__cell cc-feature" width="26%">Pros
</td>
<td class="table__cell" width="37%"> 

<b>Multilingual:</b><br>Can you standard programming language without learning a new DSL<br><br>
<b>Strong Typing:</b><br>Fewer mistakes, better IDE support<br><br>
<b>Dynamic Logic:</b><br>Loops, conditionals in config<br><br>
<b>Rich Outputs:</b><br>Detailed CLI diffs

</td><td class="table__cell">

<b>HCL:</b><br>Dynamically typed DSL that is well known among domain-specific languages<br><br>
<b>Well-Established:</b><br>Larger community and more tools<br><br>
<b>State Management:</b><br>Multiple backends<br><br>
<b>Extensible:</b><br>Provider-based

</td></tr>

<tr class="table__row">
<td class="table__cell cc-feature" width="26%"><hr>
</td>
<td class="table__cell cc-feature" width="37%"><hr>
</td>
<td class="table__cell cc-feature" width="37%"><hr>
</td>
</tr>

<tr class="table__row"><td style="text-align: center;" class="table__cell cc-feature">Cons</td>
<td class="table__cell">

<b>Learning Curve:</b><br>Tough if used to HCL<br><br> 
<b>State Management:</b><br>SaaS backend limitations<br><br>
<b>Community:</b><br>Smaller but growing

</td>
<td class="table__cell">

<b>Language:</b><br>HCL is less expressive<br><br>
<b>Complexity:</b><br>Advanced features tricky<br><br>
<b>Error Messages:</b><br>Can be cryptic<br><br>
<b>Concurrency:</b><br>Locking not flexible


</td></tr>


</tbody></table></div></div><h2>&zwj;<strong>When to Choose Terraform</strong></h2><ol role="list"><li><strong>Well-Established Infrastructure</strong>: When you're working with traditional VMs, networking configurations, and databases, Terraform has a strong track record here.</li><li><strong>Declarative Code:</strong> If you prefer infrastructure to be declared in a domain-specific language designed solely for that purpose, Terraform's HCL is your friend.</li><li><strong>Multi-Cloud &amp; Provider Ecosystem</strong>: Massive selection of providers and modules. Great if you have a heterogeneous environment with multiple clouds or SaaS services.</li><li><strong>Community and Resources</strong>: Abundance of tutorials, courses, and third-party tools. Also, a very active community.</li></ol><h2><strong>When to Choose Pulumi</strong></h2><ol role="list"><li><strong>Full Programming Languages</strong>: If you want the expressiveness and power of full-fledged languages like Python, TypeScript, or Go, Pulumi lets you code away.</li><li><strong>Application-Oriented</strong>: Better suited for modern, container-based, or serverless architectures. You can even deploy your app code along with your infrastructure.</li><li><strong>Dynamic Configuration</strong>: Need complex logic, loops, or conditionals? Pulumi's programming language support makes this a breeze.</li><li><strong>Strong Typing and IDE Support</strong>: With general-purpose languages, you get the benefits of strong typing and excellent IDE support for auto-completion, error-checking, etc.</li><li><strong>Integrated Config Management</strong>: Manage your secrets and configs in the same language as your infrastructure code, without requiring separate tools.</li><li><strong>Open-Source</strong>: If your organization prefers open-source tools for compliance or philosophy, HashiCorp's latest decision to <a href="https://www.env0.com/blog/hashicorp-license-change">change Terraform's license to BSL</a> might deter you. Pulumi would be a better option.</li></ol><p>In specific scenarios, such as multi-cloud infrastructure management, both Terraform and Pulumi offer valuable solutions for uniformly managing resources across different environments.</p><h3><strong>Licensing and How It May Affect Your Terraform vs. Pulumi Decision</strong></h3><ol role="list"><li><strong>License Flexibility</strong>: If you're comfortable with Apache 2.0, Pulumi SDK offers a pretty flexible license for most use cases.</li><li><strong>Commercial Features</strong>: For enterprise-grade features, you'd likely end up in a paid plan for both Terraform and Pulumi, depending on your needs.</li><li><strong>Open-Source Commitment</strong>: If an OSI-approved license is a strict requirement, Pulumi SDK meets that criterion.</li></ol><p>Let's now compare Pulumi and Terraform with this simple example to create an S3 bucket in AWS.</p><h2><strong>Terraform AWS S3 Bucket Example</strong></h2><h4><strong>Terraform Files</strong></h4><p>Below is our <strong>main.tf</strong> file.</p><div class="w-embed"><pre><code class="code-block hljs language-python">terraform {
  required_providers {
    aws = {
      source = <span class="hljs-string">"hashicorp/aws"</span>
      version = <span class="hljs-string">"5.19.0"</span>
    }
  }
}

provider <span class="hljs-string">"aws"</span> {
  region = <span class="hljs-string">"us-east-1"</span>
}

resource <span class="hljs-string">"aws_s3_bucket"</span> <span class="hljs-string">"terraform-bucket"</span> {
  bucket = <span class="hljs-string">"env0-terraform-example"</span>

  tags = {
    Name        = <span class="hljs-string">"My env0 Terraform Example Bucket"</span>
    Environment = <span class="hljs-string">"Dev"</span>
    Team        = <span class="hljs-string">"Engineering"</span>
  }
}


resource <span class="hljs-string">"aws_s3_bucket_ownership_controls"</span> <span class="hljs-string">"terraform-bucket"</span> {
  bucket = aws_s3_bucket.terraform-bucket.<span class="hljs-built_in">id</span>
  rule {
    object_ownership = <span class="hljs-string">"BucketOwnerPreferred"</span>
  }
}

resource <span class="hljs-string">"aws_s3_bucket_acl"</span> <span class="hljs-string">"terraform-bucket"</span> {
  depends_on = [aws_s3_bucket_ownership_controls.terraform-bucket]

  bucket = aws_s3_bucket.terraform-bucket.<span class="hljs-built_in">id</span>
  acl    = <span class="hljs-string">"private"</span>
}


</code></pre></div><h4><strong>Run Terraform</strong></h4><p>Now all I need to do is run the following commands:</p><div class="w-embed"><pre><code class="code-block hljs language-bash"><span class="hljs-comment"># Set AWS Access Key ID as an environment variable to authenticate with AWS.</span>
<span class="hljs-comment"># Replace 'your-access-key-id' with your actual AWS Access Key ID.</span>
<span class="hljs-built_in">export</span> AWS_ACCESS_KEY_ID=your-access-key-id

<span class="hljs-comment"># Set AWS Secret Access Key as an environment variable for AWS authentication.</span>
<span class="hljs-comment"># Replace 'your-secret-access-key' with your actual AWS Secret Access Key.</span>
<span class="hljs-built_in">export</span> AWS_SECRET_ACCESS_KEY=your-secret-access-key

<span class="hljs-comment"># Initialize Terraform project. This sets up the backend, downloads necessary providers, etc.</span>
terraform init

<span class="hljs-comment"># Run a Terraform plan to preview the changes that will be made to the infrastructure.</span>
<span class="hljs-comment"># This step is a dry-run that shows what will happen when you actually apply the changes.</span>
terraform plan

<span class="hljs-comment"># Apply the planned changes to the infrastructure.</span>
<span class="hljs-comment"># This step will actually create, update, or delete resources to match the configuration.</span>
<span class="hljs-comment"># It will show a preview of these actions and ask for confirmation before proceeding.</span>
terraform apply
</code></pre></div><p>and here is the output of running Terraform:</p><div class="w-embed"><pre><code class="code-block hljs language-makefile">Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  <span class="hljs-comment"># aws_s3_bucket.terraform-bucket will be created</span>
  + resource <span class="hljs-string">"aws_s3_bucket"</span> <span class="hljs-string">"terraform-bucket"</span> {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = <span class="hljs-string">"env0-terraform-example"</span>
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags                        = {
          + <span class="hljs-string">"Environment"</span> = <span class="hljs-string">"Dev"</span>
          + <span class="hljs-string">"Name"</span>        = <span class="hljs-string">"My env0 Terraform Example Bucket"</span>
        }
      + tags_all                    = {
          + <span class="hljs-string">"Environment"</span> = <span class="hljs-string">"Dev"</span>
          + <span class="hljs-string">"Name"</span>        = <span class="hljs-string">"My env0 Terraform Example Bucket"</span>
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

  <span class="hljs-comment"># aws_s3_bucket_acl.terraform-bucket will be created</span>
  + resource <span class="hljs-string">"aws_s3_bucket_acl"</span> <span class="hljs-string">"terraform-bucket"</span> {
      + acl    = <span class="hljs-string">"private"</span>
      + bucket = (known after apply)
      + id     = (known after apply)
    }

  <span class="hljs-comment"># aws_s3_bucket_ownership_controls.terraform-bucket will be created</span>
  + resource <span class="hljs-string">"aws_s3_bucket_ownership_controls"</span> <span class="hljs-string">"terraform-bucket"</span> {
      + bucket = (known after apply)
      + id     = (known after apply)

      + rule {
          + object_ownership = <span class="hljs-string">"BucketOwnerPreferred"</span>
        }
    }

<span class="hljs-section">Plan: 3 to add, 0 to change, 0 to destroy.</span>
<span class="hljs-section">aws_s3_bucket.terraform-bucket: Creating...</span>
<span class="hljs-section">aws_s3_bucket.terraform-bucket: Still creating... [10s elapsed]</span>
<span class="hljs-section">aws_s3_bucket.terraform-bucket: Creation complete after 16s [id=env0-terraform-example]</span>
<span class="hljs-section">aws_s3_bucket_ownership_controls.terraform-bucket: Creating...</span>
<span class="hljs-section">aws_s3_bucket_ownership_controls.terraform-bucket: Creation complete after 1s [id=env0-terraform-example]</span>
<span class="hljs-section">aws_s3_bucket_acl.terraform-bucket: Creating...</span>
<span class="hljs-section">aws_s3_bucket_acl.terraform-bucket: Creation complete after 0s [id=env0-terraform-example,private]</span>
</code></pre></div><h4><strong>Cleanup with Terraform</strong></h4><p>To go ahead and clean up, run terraform destroy<strong>.</strong></p><h2><strong>Pulumi AWS S3 Bucket Example</strong></h2><p>Since you can use different programming languages with Pulumi, I'm most comfortable with Python, so we'll go with that.</p><p>To get started with Pulumi, I can use the command <span class="code">pulumi new</span>. Here's what happens when you run <span class="code">pulumi new</span>:</p><ol role="list"><li><strong>Template Selection</strong>: Pulumi will first ask you to pick a template – AWS Python stack, an Azure TypeScript stack, or one of a number of others. You can even use your own custom template if you have one. For this tutorial, I’m using AWS Python.</li><li><strong>Project Metadata</strong>: You'll be prompted to fill in some metadata for your new project, like the project name, stack name, and sometimes config values that the template requires. This sets up the<strong> pulumi.yaml</strong> and <strong>pulumi.[stack-name].yaml</strong> files.</li><li><strong>File Generation</strong>: Pulumi will generate a set of files based on the template you chose. These usually include a <strong>pulumi.yaml</strong> file for the project metadata and source files in the language of your choice (e.g., <span class="code">__main__.py</span> for Python and for our example).</li><li><strong>Install Dependencies</strong>: If the template has any dependencies (like AWS SDK for a Python AWS template), Pulumi will install them for you.</li><li><strong>Ready to Go</strong>: After all this, you'll have a new Pulumi project directory all set up and ready for you to start coding your infrastructure.</li></ol><p>I can then cd into our project directory and run <span class="code">pulumi up</span> to deploy our new stack, but first, I have to edit the generated <strong>code in __main__.py </strong>to tailor it to our specific needs.</p><p>I've taken a few screenshots of this process below.</p><figure class="w-richtext-figure-type-image w-richtext-align-fullwidth" style="max-width:896pxpx"><div><img alt="Selecting our aws-python template" src="https://assets-global.website-files.com/63eb9bf7fa9e2724829607c1/652ea9f3ab2db3a44b64af2c_4F9C6URRQQl9UgwEzUHnLvBK-UIdMRDtF0hW2ejhqoZKxZXoRh_AMKskN-l62aBYF8wGc1skdu2bVKYsnI3l5yD_CvFlqoCN6KiwsSMUnYM3kAgGVVqUrQySj5ODfuya9FKAnptJ6ZtnT_husW-aadM.png"></div></figure><figure class="w-richtext-figure-type-image w-richtext-align-fullwidth" style="max-width:896pxpx"><div><img alt="Answering a few prompts and installing dependencies" src="https://assets-global.website-files.com/63eb9bf7fa9e2724829607c1/652ea9f4878288ffe95f0d01_iqR3RENqEgSVpnb89lpO6_cHwen9qtASUTJvCkecr79ymcyqGvTt_v9t3D2cRzFzVU_j0PAu2WR2gDKij7KKHW_nKvJhVSaEcNBBwbOHqnDTKJiY6lcml-ZTyiTBqz3y8rWx3QJ2Vli5Y0IjlEhPBZw.png"></div></figure><figure class="w-richtext-figure-type-image w-richtext-align-fullwidth" style="max-width:719pxpx"><div><img alt="Our project is ready" src="https://assets-global.website-files.com/63eb9bf7fa9e2724829607c1/652ea9f3e582c8ebe1230a8a_t3pS193RlEVY22ul9MxziKwenSvN0uDr-xA0MJE16mFVf5Agcmr0iFmhJ0UxQsxTRkKzCoUJwqwfkyei3hOkdYLrHxfGrK6_XXXjh3hZR-2LbTOoBG0BJcsSxPHjqQa1UyGXockc2hsr4RbGWD7AqEw.png"></div></figure><h4><strong>Pulumi Files</strong></h4><p>These are the files that were created in the previous process.</p><p><strong>pulumi.s3-pulumi-test.yaml</strong></p><div class="w-embed"><pre><code class="code-block hljs language-yaml"><span class="hljs-attr">config:</span>
  <span class="hljs-attr">aws:region:</span> <span class="hljs-string">us-east-1</span>
</code></pre></div><p><strong>pulumi.yaml</strong></p><div class="w-embed"><pre><code class="code-block hljs language-yaml"><span class="hljs-attr">name:</span> <span class="hljs-string">PulumiTest</span>
<span class="hljs-attr">runtime:</span>
  <span class="hljs-attr">name:</span> <span class="hljs-string">python</span>
  <span class="hljs-attr">options:</span>
    <span class="hljs-attr">virtualenv:</span> <span class="hljs-string">venv</span>
<span class="hljs-attr">description:</span> <span class="hljs-string">Testing</span> <span class="hljs-string">Pulumi</span> <span class="hljs-string">with</span> <span class="hljs-string">Python</span> <span class="hljs-string">for</span> <span class="hljs-string">S3</span></code></pre></div><p><strong>requirements.txt</strong></p><div class="w-embed"><pre><code class="code-block hljs language-shell"><span class="hljs-meta prompt_">pulumi&gt;</span><span class="language-bash">=3.0.0,&lt;4.0.0</span>
<span class="hljs-meta prompt_">pulumi-aws&gt;</span><span class="language-bash">=6.0.2,&lt;7.0.0</span></code></pre></div><p>This is the original <strong>__main__.py</strong> file</p><div class="w-embed"><pre><code class="code-block hljs language-python"><span class="hljs-string">"""An AWS Python Pulumi program"""</span>

<span class="hljs-keyword">import</span> pulumi
<span class="hljs-keyword">from</span> pulumi_aws <span class="hljs-keyword">import</span> s3

<span class="hljs-comment"># Create an AWS resource (S3 Bucket)</span>
bucket = s3.Bucket(<span class="hljs-string">'my-bucket'</span>)

<span class="hljs-comment"># Export the name of the bucket</span>
pulumi.export(<span class="hljs-string">'bucket_name'</span>, bucket.<span class="hljs-built_in">id</span>)</code></pre></div><p>And below is our updated <strong>__main__.py</strong> file</p><div class="w-embed"><pre><code class="code-block hljs language-python"><span class="hljs-keyword">import</span> pulumi
<span class="hljs-keyword">from</span> pulumi_aws <span class="hljs-keyword">import</span> s3

<span class="hljs-comment"># Create an AWS resource (S3 Bucket)</span>
bucket = s3.Bucket(<span class="hljs-string">"env0-pulumi-example"</span>,
                   bucket=<span class="hljs-string">"env0-pulumi-example"</span>,
                   acl=<span class="hljs-string">"private"</span>,
                   tags={
                       <span class="hljs-string">"Name"</span>: <span class="hljs-string">"My env0 Pulumi Example Bucket"</span>,
                       <span class="hljs-string">"Environment"</span>: <span class="hljs-string">"Dev"</span>,
                   })

ownership = s3.BucketOwnershipControls(
    <span class="hljs-string">"bucket-controls"</span>,
    bucket=bucket.<span class="hljs-built_in">id</span>,
    rule={<span class="hljs-string">"object_ownership"</span>: <span class="hljs-string">"BucketOwnerPreferred"</span>}
)

<span class="hljs-comment"># Export the name of the bucket</span>
pulumi.export(<span class="hljs-string">"bucketName"</span>, bucket.<span class="hljs-built_in">id</span>)</code></pre></div><h4><strong>Run Pulumi</strong></h4><p>Let's now run Pulumi, but first, you'll need to log in to Pulumi since we're going to use the Pulumi SaaS to store our stack. Make sure you have a Pulumi account then run <span class="code">pulumi login</span><strong>.</strong> Create a token and feed it in the prompt. Now you're ready to run the following commands:</p><div class="w-embed"><pre><code class="code-block hljs language-lua">pulumi preview
Previewing update (s3-pulumi-test)

View <span class="hljs-keyword">in</span> Browser (Ctrl+O): https://app.pulumi.com/samgabrail/PulumiTest/s3-pulumi-test/previews/bc3ff0f6<span class="hljs-number">-4e84</span><span class="hljs-number">-4</span>a80<span class="hljs-number">-9</span>d64-aed495c97f4f

     Type                               Name                       Plan       
 +   pulumi:pulumi:Stack                PulumiTest-s3-pulumi-test  <span class="hljs-built_in">create</span>     
 +   ├─ aws:s3:Bucket                   env0-pulumi-example        <span class="hljs-built_in">create</span>     
 +   └─ aws:s3:BucketOwnershipControls  bucket-controls            <span class="hljs-built_in">create</span>     


Outputs:
    bucketName: <span class="hljs-built_in">output</span>[<span class="hljs-built_in">string</span>]

Resources:
    + <span class="hljs-number">3</span> to <span class="hljs-built_in">create</span></code></pre></div><p>and when satisfied run <span class="code">pulumi up</span> and choose 'yes'<strong> </strong>when prompted.</p><div class="w-embed"><pre><code class="code-block hljs language-java">pulumi up
Previewing <span class="hljs-title function_">update</span> <span class="hljs-params">(s3-pulumi-test)</span>

View in <span class="hljs-title function_">Browser</span> <span class="hljs-params">(Ctrl+O)</span>: https:<span class="hljs-comment">//app.pulumi.com/samgabrail/PulumiTest/s3-pulumi-test/previews/68f6a538-b4e8-419f-95bf-6b5198a2706e</span>

     Type                               Name                       Plan       
 +   pulumi:pulumi:Stack                PulumiTest-s3-pulumi-test  create     
 +   ├─ aws:s3:Bucket                   env0-pulumi-example        create     
 +   └─ aws:s3:BucketOwnershipControls  bucket-controls            create     


Outputs:
    bucketName: output[string]

Resources:
    + <span class="hljs-number">3</span> to create

Do you want to perform <span class="hljs-built_in">this</span> update? yes
<span class="hljs-title function_">Updating</span> <span class="hljs-params">(s3-pulumi-test)</span>

View in <span class="hljs-title function_">Browser</span> <span class="hljs-params">(Ctrl+O)</span>: https:<span class="hljs-comment">//app.pulumi.com/samgabrail/PulumiTest/s3-pulumi-test/updates/1</span>

     Type                               Name                       Status              
 +   pulumi:pulumi:Stack                PulumiTest-s3-pulumi-test  <span class="hljs-title function_">created</span> <span class="hljs-params">(3s)</span>        
 +   ├─ aws:s3:Bucket                   env0-pulumi-example        <span class="hljs-title function_">created</span> <span class="hljs-params">(<span class="hljs-number">0.</span>83s)</span>     
 +   └─ aws:s3:BucketOwnershipControls  bucket-controls            <span class="hljs-title function_">created</span> <span class="hljs-params">(<span class="hljs-number">0.</span>66s)</span>     


Outputs:
    bucketName: <span class="hljs-string">"env0-pulumi-example"</span>

Resources:
    + <span class="hljs-number">3</span> created

Duration: 5s</code></pre></div><h4><strong>View the S3 Bucket Created by Pulumi in the AWS Console</strong></h4><figure class="w-richtext-figure-type-image w-richtext-align-fullwidth" style="max-width:896pxpx"><div><img alt="AWS Console showing the S3 bucket that Pulumi created" src="https://assets-global.website-files.com/63eb9bf7fa9e2724829607c1/652ea9f4ab66a14f114fa03f_uhheg33gBZ5lNmJqIBLUYiCTkv70DYSA5WJqDlTFrwOEAd8UprHqDJs05iWWL6KmJT0RqE3tdk-jOtfrO6rjNY9IxG_BylhQo2q0nLsn6PV2M3hEv3ldkYcJYTNvtjpouk4P4wpNj6iOLEMposQ7LQs.png"></div></figure><h4><strong>Cleanup with Pulumi</strong></h4><p>Now go ahead and run <span class="code">pulumi destroy</span> to clean up and delete the bucket.</p><h2><strong>Summary</strong></h2><p>In conclusion, both Terraform and Pulumi offer powerful features and benefits for managing and deploying infrastructure. While Terraform’s maturity and extensive community support make it a popular choice, Pulumi’s developer-friendly approach and growing ecosystem position it as an increasingly attractive alternative.&nbsp;</p><p>By considering factors such as language support, state management, community resources, and specific use cases, organizations can make an informed decision between these two powerful IaC tools to best meet their infrastructure management needs. Better yet, use both with env0 since it's a framework-agnostic platform.<br>&zwj;</p></div><div class="text-rich-text _350px-max-mobile w-condition-invisible w-richtext"><p>The world of <a href="https://www.env0.com/blog/infrastructure-as-code-101">Infrastructure-as-Code (IaC)</a> has evolved by leaps and bounds. With a growing number of IaC tools available, DevOps teams often find themselves weighing the pros and cons of popular choices that pits Pulumi vs Terraform and others.</p><p>In this blog, I’ll take a deep dive into the features, similarities, differences, and real-world use cases of <a href="https://www.env0.com/blog/terraform-tutorial">Terraform</a> and <a href="https://www.env0.com/blog/what-is-pulumi-and-how-to-use-it-with-env0">Pulumi</a>. Specifically, I’m going to focus on the following:</p><ul role="list"><li><strong>Comparison of Pulumi and Terraform:</strong> I’ll cover features, language flexibility, and community support.</li><li><strong>Languages</strong>: Terraform utilizes its own HCL while Pulumi supports multiple common programming languages. I will review how these differences in approach to state management can make one more suitable than the other.</li><li><strong>Real-world examples</strong>: I’ll demonstrate how both tools can be used for managing cloud infrastructure across multiple platforms securely.</li></ul><p>So, buckle up as we explore the fascinating world of Pulumi and Terraform.<br><br><strong>Video Walkthrough</strong></p><figure class="w-richtext-figure-type-video w-richtext-align-fullwidth" style="padding-bottom:56.33802816901409%"><div><iframe allowfullscreen="true" frameborder="0" scrolling="no" src="https://player.vimeo.com/video/875583090" title="Pulumi vs Terraform: An In-Depth Comparison"></iframe></div></figure><p><strong>My Setup</strong></p><ol role="list"><li><strong>A GitHub account:</strong> I’ll use GitHub Codespaces with all necessary tools installed for you.</li><li><strong>Repository: </strong>TL;DR: You can find<a href="https://github.com/samgabrail/pulumi-vs-terraform"> the main repo here.</a></li></ol><h2><strong>Understanding Infrastructure-as-Code (IaC)</strong></h2><p>For posterity, remember that Infrastructure-as-Code provisions infra resources using preset configuration files instead of manually.&nbsp;</p><p>The beauty of IaC lies in its ability to treat infrastructure like code, allowing us to manage it with the same processes, tools, and programming languages as application code.&nbsp;</p><p>This enables us to leverage software development practices like version control, testing, and automation throughout the infrastructure provisioning lifecycle, making it easier to allocate infrastructure resources efficiently.</p><h2><strong>Pulumi vs. Terraform</strong></h2><p>Terraform and Pulumi are key players in the IaC arena, each offering unique features for infrastructure automation. Terraform shines in its broad compatibility with cloud providers such as <a href="https://www.env0.com/blog/deploying-amazon-elastic-kubernetes-service-aws-eks-with-terraform">AWS</a>, <a href="https://www.env0.com/blog/how-to-integrate-azure-devops-with-env0">Azure</a>, and <a href="https://docs.env0.com/docs/gcp-logging">GCP</a>.&nbsp;</p><p>The use of its domain-specific language, Hashicorp Configuration Language (HCL), lets you adopt software engineering practices in managing infrastructure with Terraform. It operates on a declarative model, focusing on what the end state of the infrastructure should look like.</p><p>Pulumi, on the other hand, aims to deliver a developer-centric experience by offering support for multiple languages including TypeScript, Go, .NET, Python, and Java. Its architecture is equipped with essentials such as a language host, command-line interface, and state management capabilities.</p><p>While Terraform specializes in a focused, declarative approach with its HCL, Pulumi offers broader language support and flexibility, making each tool uniquely suited for various cloud computing tasks and environments.</p><h3><strong>Key Features Comparison</strong></h3><p>Terraform stands out with a broad set of features such as its declarative approach, extensive platform support, and a wealth of community <a href="https://www.env0.com/blog/terraform-modules">modules</a>.&nbsp;</p><p>It allows users to express infrastructure requirements in a simple yet powerful way and integrates with a diverse selection of plugins and tools created by the community.</p><p>Meanwhile, with its user-friendly interface, extensive integrations, and native provider support, Pulumi becomes a compelling choice for developers working with Infrastructure-as-Code.</p><p>One of Pulumi’s standout features is its Dynamic Provider Support, which enables the tool to create Terraform providers and support new resources and features at a much faster pace than Terraform.&nbsp;</p><p>This allows Pulumi to stay up-to-date with the latest cloud or SaaS features and resources, ensuring developers can access cutting-edge tools and technologies.</p><p>Here is a high-level comparison of the two tools:</p><div class="w-embed"><div class="table-stroke"><div><table class="table__component">

<thead class="table__head"><tr class="table__row"><th class="table__header"></th><th class="table__header">Pulumi</th><th class="table__header">Terraform</th></tr></thead>

<tbody class="table__body">

<tr class="table__row"><td class="table__cell cc-feature" width="26%">Configuration Language
</td><td class="table__cell" width="37%">Multiple: Python, JavaScript, TypeScript, Go, C#, F#, YAML</td><td class="table__cell">Hashicorp Configuration Language (HCL)
</td></tr>

<tr class="table__row"><td class="table__cell cc-feature">Plugins</td><td class="table__cell">Compatible with Terraform providers and has its own Pulumi providers</td><td class="table__cell">Large ecosystem of Terraform providers</td></tr>

<tr class="table__row"><td class="table__cell cc-feature">State Management</td><td class="table__cell">Pulumi Cloud hosts state by default, with option to move hosting to another cloud service or manage manually</td><td class="table__cell">State is manually managed manually JSON state files (<b>terraform.tfstate</b>)</td></tr>

<tr class="table__row"><td class="table__cell cc-feature">State Encryption</td><td class="table__cell">Encrypted by default</td><td class="table__cell">Unencrypted by default (premium feature)</td></tr>

<tr class="table__row"><td class="table__cell cc-feature">Testing</td><td class="table__cell">Unit, property, and integration testing, also compatible with external testing framework</td><td class="table__cell">Integration testing, new testing feature as of v1.6.0</td></tr>

<tr class="table__row last-row"><td class="table__cell cc-feature">Integration</td><td class="table__cell">Native integration for the available config languages</td><td class="table__cell">Third-party scripts</td></tr>

</tbody></table></div></div><h3><strong>Pros &amp; Cons</strong></h3><p>Another way to look at the two tools is to pit their pros and cons against each other. I do that here in this chart, that dives a little deeper into the contrasts of the previous section.</p><div class="w-embed"><div class="table-stroke"><div><table class="table__component">

<thead class="table__head"><tr class="table__row"><th class="table__header"></th><th class="table__header">Pulumi</th><th class="table__header">Terraform</th></tr></thead>

<tbody class="table__body">

<tr class="table__row">
<td style="text-align: center;" class="table__cell cc-feature" width="26%">Pros
</td>
<td class="table__cell" width="37%"> 

<b>Multilingual:</b><br>Can you standard programming language without learning a new DSL<br><br>
<b>Strong Typing:</b><br>Fewer mistakes, better IDE support<br><br>
<b>Dynamic Logic:</b><br>Loops, conditionals in config<br><br>
<b>Rich Outputs:</b><br>Detailed CLI diffs

</td><td class="table__cell">

<b>HCL:</b><br>Dynamically typed DSL that is well known among domain-specific languages<br><br>
<b>Well-Established:</b><br>Larger community and more tools<br><br>
<b>State Management:</b><br>Multiple backends<br><br>
<b>Extensible:</b><br>Provider-based

</td></tr>

<tr class="table__row">
<td class="table__cell cc-feature" width="26%"><hr>
</td>
<td class="table__cell cc-feature" width="37%"><hr>
</td>
<td class="table__cell cc-feature" width="37%"><hr>
</td>
</tr>

<tr class="table__row"><td style="text-align: center;" class="table__cell cc-feature">Cons</td>
<td class="table__cell">

<b>Learning Curve:</b><br>Tough if used to HCL<br><br> 
<b>State Management:</b><br>SaaS backend limitations<br><br>
<b>Community:</b><br>Smaller but growing

</td>
<td class="table__cell">

<b>Language:</b><br>HCL is less expressive<br><br>
<b>Complexity:</b><br>Advanced features tricky<br><br>
<b>Error Messages:</b><br>Can be cryptic<br><br>
<b>Concurrency:</b><br>Locking not flexible


</td></tr>


</tbody></table></div></div><h2>&zwj;<strong>When to Choose Terraform</strong></h2><ol role="list"><li><strong>Well-Established Infrastructure</strong>: When you're working with traditional VMs, networking configurations, and databases, Terraform has a strong track record here.</li><li><strong>Declarative Code:</strong> If you prefer infrastructure to be declared in a domain-specific language designed solely for that purpose, Terraform's HCL is your friend.</li><li><strong>Multi-Cloud &amp; Provider Ecosystem</strong>: Massive selection of providers and modules. Great if you have a heterogeneous environment with multiple clouds or SaaS services.</li><li><strong>Community and Resources</strong>: Abundance of tutorials, courses, and third-party tools. Also, a very active community.</li></ol><h2><strong>When to Choose Pulumi</strong></h2><ol role="list"><li><strong>Full Programming Languages</strong>: If you want the expressiveness and power of full-fledged languages like Python, TypeScript, or Go, Pulumi lets you code away.</li><li><strong>Application-Oriented</strong>: Better suited for modern, container-based, or serverless architectures. You can even deploy your app code along with your infrastructure.</li><li><strong>Dynamic Configuration</strong>: Need complex logic, loops, or conditionals? Pulumi's programming language support makes this a breeze.</li><li><strong>Strong Typing and IDE Support</strong>: With general-purpose languages, you get the benefits of strong typing and excellent IDE support for auto-completion, error-checking, etc.</li><li><strong>Integrated Config Management</strong>: Manage your secrets and configs in the same language as your infrastructure code, without requiring separate tools.</li><li><strong>Open-Source</strong>: If your organization prefers open-source tools for compliance or philosophy, HashiCorp's latest decision to <a href="https://www.env0.com/blog/hashicorp-license-change">change Terraform's license to BSL</a> might deter you. Pulumi would be a better option.</li></ol><p>In specific scenarios, such as multi-cloud infrastructure management, both Terraform and Pulumi offer valuable solutions for uniformly managing resources across different environments.</p><h3><strong>Licensing and How It May Affect Your Terraform vs. Pulumi Decision</strong></h3><ol role="list"><li><strong>License Flexibility</strong>: If you're comfortable with Apache 2.0, Pulumi SDK offers a pretty flexible license for most use cases.</li><li><strong>Commercial Features</strong>: For enterprise-grade features, you'd likely end up in a paid plan for both Terraform and Pulumi, depending on your needs.</li><li><strong>Open-Source Commitment</strong>: If an OSI-approved license is a strict requirement, Pulumi SDK meets that criterion.</li></ol><p>Let's now compare Pulumi and Terraform with this simple example to create an S3 bucket in AWS.</p><h2><strong>Terraform AWS S3 Bucket Example</strong></h2><h4><strong>Terraform Files</strong></h4><p>Below is our <strong>main.tf</strong> file.</p><div class="w-embed"><pre><code class="code-block hljs language-python">terraform {
  required_providers {
    aws = {
      source = <span class="hljs-string">"hashicorp/aws"</span>
      version = <span class="hljs-string">"5.19.0"</span>
    }
  }
}

provider <span class="hljs-string">"aws"</span> {
  region = <span class="hljs-string">"us-east-1"</span>
}

resource <span class="hljs-string">"aws_s3_bucket"</span> <span class="hljs-string">"terraform-bucket"</span> {
  bucket = <span class="hljs-string">"env0-terraform-example"</span>

  tags = {
    Name        = <span class="hljs-string">"My env0 Terraform Example Bucket"</span>
    Environment = <span class="hljs-string">"Dev"</span>
    Team        = <span class="hljs-string">"Engineering"</span>
  }
}


resource <span class="hljs-string">"aws_s3_bucket_ownership_controls"</span> <span class="hljs-string">"terraform-bucket"</span> {
  bucket = aws_s3_bucket.terraform-bucket.<span class="hljs-built_in">id</span>
  rule {
    object_ownership = <span class="hljs-string">"BucketOwnerPreferred"</span>
  }
}

resource <span class="hljs-string">"aws_s3_bucket_acl"</span> <span class="hljs-string">"terraform-bucket"</span> {
  depends_on = [aws_s3_bucket_ownership_controls.terraform-bucket]

  bucket = aws_s3_bucket.terraform-bucket.<span class="hljs-built_in">id</span>
  acl    = <span class="hljs-string">"private"</span>
}


</code></pre></div><h4><strong>Run Terraform</strong></h4><p>Now all I need to do is run the following commands:</p><div class="w-embed"><pre><code class="code-block hljs language-bash"><span class="hljs-comment"># Set AWS Access Key ID as an environment variable to authenticate with AWS.</span>
<span class="hljs-comment"># Replace 'your-access-key-id' with your actual AWS Access Key ID.</span>
<span class="hljs-built_in">export</span> AWS_ACCESS_KEY_ID=your-access-key-id

<span class="hljs-comment"># Set AWS Secret Access Key as an environment variable for AWS authentication.</span>
<span class="hljs-comment"># Replace 'your-secret-access-key' with your actual AWS Secret Access Key.</span>
<span class="hljs-built_in">export</span> AWS_SECRET_ACCESS_KEY=your-secret-access-key

<span class="hljs-comment"># Initialize Terraform project. This sets up the backend, downloads necessary providers, etc.</span>
terraform init

<span class="hljs-comment"># Run a Terraform plan to preview the changes that will be made to the infrastructure.</span>
<span class="hljs-comment"># This step is a dry-run that shows what will happen when you actually apply the changes.</span>
terraform plan

<span class="hljs-comment"># Apply the planned changes to the infrastructure.</span>
<span class="hljs-comment"># This step will actually create, update, or delete resources to match the configuration.</span>
<span class="hljs-comment"># It will show a preview of these actions and ask for confirmation before proceeding.</span>
terraform apply
</code></pre></div><p>and here is the output of running Terraform:</p><div class="w-embed"><pre><code class="code-block hljs language-makefile">Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  <span class="hljs-comment"># aws_s3_bucket.terraform-bucket will be created</span>
  + resource <span class="hljs-string">"aws_s3_bucket"</span> <span class="hljs-string">"terraform-bucket"</span> {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = <span class="hljs-string">"env0-terraform-example"</span>
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags                        = {
          + <span class="hljs-string">"Environment"</span> = <span class="hljs-string">"Dev"</span>
          + <span class="hljs-string">"Name"</span>        = <span class="hljs-string">"My env0 Terraform Example Bucket"</span>
        }
      + tags_all                    = {
          + <span class="hljs-string">"Environment"</span> = <span class="hljs-string">"Dev"</span>
          + <span class="hljs-string">"Name"</span>        = <span class="hljs-string">"My env0 Terraform Example Bucket"</span>
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

  <span class="hljs-comment"># aws_s3_bucket_acl.terraform-bucket will be created</span>
  + resource <span class="hljs-string">"aws_s3_bucket_acl"</span> <span class="hljs-string">"terraform-bucket"</span> {
      + acl    = <span class="hljs-string">"private"</span>
      + bucket = (known after apply)
      + id     = (known after apply)
    }

  <span class="hljs-comment"># aws_s3_bucket_ownership_controls.terraform-bucket will be created</span>
  + resource <span class="hljs-string">"aws_s3_bucket_ownership_controls"</span> <span class="hljs-string">"terraform-bucket"</span> {
      + bucket = (known after apply)
      + id     = (known after apply)

      + rule {
          + object_ownership = <span class="hljs-string">"BucketOwnerPreferred"</span>
        }
    }

<span class="hljs-section">Plan: 3 to add, 0 to change, 0 to destroy.</span>
<span class="hljs-section">aws_s3_bucket.terraform-bucket: Creating...</span>
<span class="hljs-section">aws_s3_bucket.terraform-bucket: Still creating... [10s elapsed]</span>
<span class="hljs-section">aws_s3_bucket.terraform-bucket: Creation complete after 16s [id=env0-terraform-example]</span>
<span class="hljs-section">aws_s3_bucket_ownership_controls.terraform-bucket: Creating...</span>
<span class="hljs-section">aws_s3_bucket_ownership_controls.terraform-bucket: Creation complete after 1s [id=env0-terraform-example]</span>
<span class="hljs-section">aws_s3_bucket_acl.terraform-bucket: Creating...</span>
<span class="hljs-section">aws_s3_bucket_acl.terraform-bucket: Creation complete after 0s [id=env0-terraform-example,private]</span>
</code></pre></div><h4><strong>Cleanup with Terraform</strong></h4><p>To go ahead and clean up, run terraform destroy<strong>.</strong></p><h2><strong>Pulumi AWS S3 Bucket Example</strong></h2><p>Since you can use different programming languages with Pulumi, I'm most comfortable with Python, so we'll go with that.</p><p>To get started with Pulumi, I can use the command <span class="code">pulumi new</span>. Here's what happens when you run <span class="code">pulumi new</span>:</p><ol role="list"><li><strong>Template Selection</strong>: Pulumi will first ask you to pick a template – AWS Python stack, an Azure TypeScript stack, or one of a number of others. You can even use your own custom template if you have one. For this tutorial, I’m using AWS Python.</li><li><strong>Project Metadata</strong>: You'll be prompted to fill in some metadata for your new project, like the project name, stack name, and sometimes config values that the template requires. This sets up the<strong> pulumi.yaml</strong> and <strong>pulumi.[stack-name].yaml</strong> files.</li><li><strong>File Generation</strong>: Pulumi will generate a set of files based on the template you chose. These usually include a <strong>pulumi.yaml</strong> file for the project metadata and source files in the language of your choice (e.g., <span class="code">__main__.py</span> for Python and for our example).</li><li><strong>Install Dependencies</strong>: If the template has any dependencies (like AWS SDK for a Python AWS template), Pulumi will install them for you.</li><li><strong>Ready to Go</strong>: After all this, you'll have a new Pulumi project directory all set up and ready for you to start coding your infrastructure.</li></ol><p>I can then cd into our project directory and run <span class="code">pulumi up</span> to deploy our new stack, but first, I have to edit the generated <strong>code in __main__.py </strong>to tailor it to our specific needs.</p><p>I've taken a few screenshots of this process below.</p><figure class="w-richtext-figure-type-image w-richtext-align-fullwidth" style="max-width:896pxpx"><div><img alt="Selecting our aws-python template" src="https://assets-global.website-files.com/63eb9bf7fa9e2724829607c1/652ea9f3ab2db3a44b64af2c_4F9C6URRQQl9UgwEzUHnLvBK-UIdMRDtF0hW2ejhqoZKxZXoRh_AMKskN-l62aBYF8wGc1skdu2bVKYsnI3l5yD_CvFlqoCN6KiwsSMUnYM3kAgGVVqUrQySj5ODfuya9FKAnptJ6ZtnT_husW-aadM.png"></div></figure><figure class="w-richtext-figure-type-image w-richtext-align-fullwidth" style="max-width:896pxpx"><div><img alt="Answering a few prompts and installing dependencies" src="https://assets-global.website-files.com/63eb9bf7fa9e2724829607c1/652ea9f4878288ffe95f0d01_iqR3RENqEgSVpnb89lpO6_cHwen9qtASUTJvCkecr79ymcyqGvTt_v9t3D2cRzFzVU_j0PAu2WR2gDKij7KKHW_nKvJhVSaEcNBBwbOHqnDTKJiY6lcml-ZTyiTBqz3y8rWx3QJ2Vli5Y0IjlEhPBZw.png"></div></figure><figure class="w-richtext-figure-type-image w-richtext-align-fullwidth" style="max-width:719pxpx"><div><img alt="Our project is ready" src="https://assets-global.website-files.com/63eb9bf7fa9e2724829607c1/652ea9f3e582c8ebe1230a8a_t3pS193RlEVY22ul9MxziKwenSvN0uDr-xA0MJE16mFVf5Agcmr0iFmhJ0UxQsxTRkKzCoUJwqwfkyei3hOkdYLrHxfGrK6_XXXjh3hZR-2LbTOoBG0BJcsSxPHjqQa1UyGXockc2hsr4RbGWD7AqEw.png"></div></figure><h4><strong>Pulumi Files</strong></h4><p>These are the files that were created in the previous process.</p><p><strong>pulumi.s3-pulumi-test.yaml</strong></p><div class="w-embed"><pre><code class="code-block hljs language-yaml"><span class="hljs-attr">config:</span>
  <span class="hljs-attr">aws:region:</span> <span class="hljs-string">us-east-1</span>
</code></pre></div><p><strong>pulumi.yaml</strong></p><div class="w-embed"><pre><code class="code-block hljs language-yaml"><span class="hljs-attr">name:</span> <span class="hljs-string">PulumiTest</span>
<span class="hljs-attr">runtime:</span>
  <span class="hljs-attr">name:</span> <span class="hljs-string">python</span>
  <span class="hljs-attr">options:</span>
    <span class="hljs-attr">virtualenv:</span> <span class="hljs-string">venv</span>
<span class="hljs-attr">description:</span> <span class="hljs-string">Testing</span> <span class="hljs-string">Pulumi</span> <span class="hljs-string">with</span> <span class="hljs-string">Python</span> <span class="hljs-string">for</span> <span class="hljs-string">S3</span></code></pre></div><p><strong>requirements.txt</strong></p><div class="w-embed"><pre><code class="code-block hljs language-shell"><span class="hljs-meta prompt_">pulumi&gt;</span><span class="language-bash">=3.0.0,&lt;4.0.0</span>
<span class="hljs-meta prompt_">pulumi-aws&gt;</span><span class="language-bash">=6.0.2,&lt;7.0.0</span></code></pre></div><p>This is the original <strong>__main__.py</strong> file</p><div class="w-embed"><pre><code class="code-block hljs language-python"><span class="hljs-string">"""An AWS Python Pulumi program"""</span>

<span class="hljs-keyword">import</span> pulumi
<span class="hljs-keyword">from</span> pulumi_aws <span class="hljs-keyword">import</span> s3

<span class="hljs-comment"># Create an AWS resource (S3 Bucket)</span>
bucket = s3.Bucket(<span class="hljs-string">'my-bucket'</span>)

<span class="hljs-comment"># Export the name of the bucket</span>
pulumi.export(<span class="hljs-string">'bucket_name'</span>, bucket.<span class="hljs-built_in">id</span>)</code></pre></div><p>And below is our updated <strong>__main__.py</strong> file</p><div class="w-embed"><pre><code class="code-block hljs language-python"><span class="hljs-keyword">import</span> pulumi
<span class="hljs-keyword">from</span> pulumi_aws <span class="hljs-keyword">import</span> s3

<span class="hljs-comment"># Create an AWS resource (S3 Bucket)</span>
bucket = s3.Bucket(<span class="hljs-string">"env0-pulumi-example"</span>,
                   bucket=<span class="hljs-string">"env0-pulumi-example"</span>,
                   acl=<span class="hljs-string">"private"</span>,
                   tags={
                       <span class="hljs-string">"Name"</span>: <span class="hljs-string">"My env0 Pulumi Example Bucket"</span>,
                       <span class="hljs-string">"Environment"</span>: <span class="hljs-string">"Dev"</span>,
                   })

ownership = s3.BucketOwnershipControls(
    <span class="hljs-string">"bucket-controls"</span>,
    bucket=bucket.<span class="hljs-built_in">id</span>,
    rule={<span class="hljs-string">"object_ownership"</span>: <span class="hljs-string">"BucketOwnerPreferred"</span>}
)

<span class="hljs-comment"># Export the name of the bucket</span>
pulumi.export(<span class="hljs-string">"bucketName"</span>, bucket.<span class="hljs-built_in">id</span>)</code></pre></div><h4><strong>Run Pulumi</strong></h4><p>Let's now run Pulumi, but first, you'll need to log in to Pulumi since we're going to use the Pulumi SaaS to store our stack. Make sure you have a Pulumi account then run <span class="code">pulumi login</span><strong>.</strong> Create a token and feed it in the prompt. Now you're ready to run the following commands:</p><div class="w-embed"><pre><code class="code-block hljs language-lua">pulumi preview
Previewing update (s3-pulumi-test)

View <span class="hljs-keyword">in</span> Browser (Ctrl+O): https://app.pulumi.com/samgabrail/PulumiTest/s3-pulumi-test/previews/bc3ff0f6<span class="hljs-number">-4e84</span><span class="hljs-number">-4</span>a80<span class="hljs-number">-9</span>d64-aed495c97f4f

     Type                               Name                       Plan       
 +   pulumi:pulumi:Stack                PulumiTest-s3-pulumi-test  <span class="hljs-built_in">create</span>     
 +   ├─ aws:s3:Bucket                   env0-pulumi-example        <span class="hljs-built_in">create</span>     
 +   └─ aws:s3:BucketOwnershipControls  bucket-controls            <span class="hljs-built_in">create</span>     


Outputs:
    bucketName: <span class="hljs-built_in">output</span>[<span class="hljs-built_in">string</span>]

Resources:
    + <span class="hljs-number">3</span> to <span class="hljs-built_in">create</span></code></pre></div><p>and when satisfied run <span class="code">pulumi up</span> and choose 'yes'<strong> </strong>when prompted.</p><div class="w-embed"><pre><code class="code-block hljs language-java">pulumi up
Previewing <span class="hljs-title function_">update</span> <span class="hljs-params">(s3-pulumi-test)</span>

View in <span class="hljs-title function_">Browser</span> <span class="hljs-params">(Ctrl+O)</span>: https:<span class="hljs-comment">//app.pulumi.com/samgabrail/PulumiTest/s3-pulumi-test/previews/68f6a538-b4e8-419f-95bf-6b5198a2706e</span>

     Type                               Name                       Plan       
 +   pulumi:pulumi:Stack                PulumiTest-s3-pulumi-test  create     
 +   ├─ aws:s3:Bucket                   env0-pulumi-example        create     
 +   └─ aws:s3:BucketOwnershipControls  bucket-controls            create     


Outputs:
    bucketName: output[string]

Resources:
    + <span class="hljs-number">3</span> to create

Do you want to perform <span class="hljs-built_in">this</span> update? yes
<span class="hljs-title function_">Updating</span> <span class="hljs-params">(s3-pulumi-test)</span>

View in <span class="hljs-title function_">Browser</span> <span class="hljs-params">(Ctrl+O)</span>: https:<span class="hljs-comment">//app.pulumi.com/samgabrail/PulumiTest/s3-pulumi-test/updates/1</span>

     Type                               Name                       Status              
 +   pulumi:pulumi:Stack                PulumiTest-s3-pulumi-test  <span class="hljs-title function_">created</span> <span class="hljs-params">(3s)</span>        
 +   ├─ aws:s3:Bucket                   env0-pulumi-example        <span class="hljs-title function_">created</span> <span class="hljs-params">(<span class="hljs-number">0.</span>83s)</span>     
 +   └─ aws:s3:BucketOwnershipControls  bucket-controls            <span class="hljs-title function_">created</span> <span class="hljs-params">(<span class="hljs-number">0.</span>66s)</span>     


Outputs:
    bucketName: <span class="hljs-string">"env0-pulumi-example"</span>

Resources:
    + <span class="hljs-number">3</span> created

Duration: 5s</code></pre></div><h4><strong>View the S3 Bucket Created by Pulumi in the AWS Console</strong></h4><figure class="w-richtext-figure-type-image w-richtext-align-fullwidth" style="max-width:896pxpx"><div><img alt="AWS Console showing the S3 bucket that Pulumi created" src="https://assets-global.website-files.com/63eb9bf7fa9e2724829607c1/652ea9f4ab66a14f114fa03f_uhheg33gBZ5lNmJqIBLUYiCTkv70DYSA5WJqDlTFrwOEAd8UprHqDJs05iWWL6KmJT0RqE3tdk-jOtfrO6rjNY9IxG_BylhQo2q0nLsn6PV2M3hEv3ldkYcJYTNvtjpouk4P4wpNj6iOLEMposQ7LQs.png"></div></figure><h4><strong>Cleanup with Pulumi</strong></h4><p>Now go ahead and run <span class="code">pulumi destroy</span> to clean up and delete the bucket.</p><h2><strong>Summary</strong></h2><p>In conclusion, both Terraform and Pulumi offer powerful features and benefits for managing and deploying infrastructure. While Terraform’s maturity and extensive community support make it a popular choice, Pulumi’s developer-friendly approach and growing ecosystem position it as an increasingly attractive alternative.&nbsp;</p><p>By considering factors such as language support, state management, community resources, and specific use cases, organizations can make an informed decision between these two powerful IaC tools to best meet their infrastructure management needs. Better yet, use both with env0 since it's a framework-agnostic platform.<br>&zwj;</p>
