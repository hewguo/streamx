/*
 * Copyright (c) 2019 The StreamX Project
 * <p>
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package com.streamxhub.streamx.console;

import com.streamxhub.streamx.common.util.SystemPropertyUtils;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.ApplicationPidFileWriter;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.bind.annotation.CrossOrigin;

/**
 * <pre><b>
 * 十步杀一人
 * 千里不留行
 * 事了拂衣去
 * 深藏身与名
 * </b></pre>
 *
 * @author benjobs
 */
@CrossOrigin
@SpringBootApplication
@EnableScheduling
public class StreamXConsole {

    public static void main(String[] args) {
        SpringApplication application = new SpringApplication(StreamXConsole.class);
        //SystemPropertyUtils.setAppHome("app.home",StreamXConsole.class);
        String pid = SystemPropertyUtils.get("pid");
        if (pid != null) {
            application.addListeners(new ApplicationPidFileWriter(pid));
        }
        application.run();
    }
}
