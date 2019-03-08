CREATE TABLE workflows (
	tenant_id varchar NOT NULL,
	project_id varchar NOT NULL,
	id varchar NOT NULL,	
	index bigint not null,	
	title varchar NOT NULL,	
	created_by varchar,
	created_at TIMESTAMP WITH TIME ZONE not null,			
	CONSTRAINT "PK_workflows" PRIMARY KEY (tenant_id,id),
	CONSTRAINT "UN_workflows" UNIQUE (tenant_id,project_id, index),
	CONSTRAINT "FK_workflows_1" FOREIGN KEY (tenant_id, id) REFERENCES projects(tenant_id,id) ON DELETE CASCADE,
	CONSTRAINT "FK_workflows_2" FOREIGN KEY (tenant_id, created_by) REFERENCES accounts(tenant_id, id) ON DELETE SET NULL		
)
WITH (
	OIDS=FALSE
) ;