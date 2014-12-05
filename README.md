# chef-repo-cookbook

TODO: Enter the cookbook description here.

knife solo prepare -i "D:/vagrant_home/insecure_private_key" -p 2222 vagrant@127.0.0.1 --bootstrap-version 11.12.0
knife solo cook -p 2222 vagrant@127.0.0.1

http://ict.matchy.net/2014/04/windows-vagrant-knife-solo-20144.html


## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-repo']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### chef-repo::default

Include `chef-repo` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-repo::default]"
  ]
}
```

## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)
