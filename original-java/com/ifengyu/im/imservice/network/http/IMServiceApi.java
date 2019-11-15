package com.ifengyu.im.imservice.network.http;

import com.ifengyu.im.imservice.network.http.entity.MsgServerAddrsEntity;
import io.reactivex.k;
import retrofit2.http.GET;

public interface IMServiceApi {
    @GET("access_server/login/")
    k<MsgServerAddrsEntity> getMsgServerAddrs();
}
