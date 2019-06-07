docker_service 'default' do
  action [:create, :start]
end

docker_image 'docker.elastic.co/elasticsearch/elasticsearch' do
  tag '7.1.1'
  action :pull
  notifies :redeploy, 'docker_container[elasticsearch]'
end

docker_container 'elasticsearch' do
  repo 'docker.elastic.co/elasticsearch/elasticsearch'
  tag '7.1.1'
  port '9200:9200'
  env 'discovery.type=single-node'
end
