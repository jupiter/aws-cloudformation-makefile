
activate:
	virtualenv -p python3 ./.venv
	echo "Now run: source ./.venv/bin/activate"
install:
	pip install -r requirements.txt
test:
	nosetests
watch:
	nosetests --with-watch
package:
	aws cloudformation package --template-file ./template.yaml --s3-bucket deploymentbucket-emxyh72p1x99 --output-template-file template_packaged.yaml
deploy:
	cat template_params.txt | xargs aws cloudformation deploy --template-file ./template_packaged.yaml --capabilities CAPABILITY_IAM
