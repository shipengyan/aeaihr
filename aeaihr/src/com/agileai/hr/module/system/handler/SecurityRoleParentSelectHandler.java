package com.agileai.hr.module.system.handler;

import java.util.List;

import com.agileai.domain.DataParam;
import com.agileai.domain.DataRow;
import com.agileai.hotweb.controller.core.TreeSelectHandler;
import com.agileai.hotweb.domain.TreeBuilder;
import com.agileai.hr.module.system.service.SecurityRoleTreeManage;

public class SecurityRoleParentSelectHandler
        extends TreeSelectHandler {
    public SecurityRoleParentSelectHandler() {
        super();
        this.serviceId = buildServiceId(SecurityRoleTreeManage.class);
        this.isMuilSelect = false;
    }

    protected TreeBuilder provideTreeBuilder(DataParam param) {
        List<DataRow> records = getService().queryPickTreeRecords(param);
        TreeBuilder treeBuilder = new TreeBuilder(records, "ROLE_ID",
                                                  "ROLE_NAME", "ROLE_PID");

        String excludeId = param.get("ROLE_ID");
        treeBuilder.getExcludeIds().add(excludeId);

        return treeBuilder;
    }

    protected SecurityRoleTreeManage getService() {
        return (SecurityRoleTreeManage) this.lookupService(this.getServiceId());
    }
}
