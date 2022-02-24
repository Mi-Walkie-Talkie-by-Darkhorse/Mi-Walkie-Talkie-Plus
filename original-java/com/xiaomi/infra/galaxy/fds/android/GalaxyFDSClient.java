package com.xiaomi.infra.galaxy.fds.android;

import com.xiaomi.infra.galaxy.fds.android.exception.GalaxyFDSClientException;
import com.xiaomi.infra.galaxy.fds.android.model.FDSObject;
import com.xiaomi.infra.galaxy.fds.android.model.ObjectMetadata;
import com.xiaomi.infra.galaxy.fds.android.model.ProgressListener;
import com.xiaomi.infra.galaxy.fds.android.model.PutObjectResult;
import com.xiaomi.infra.galaxy.fds.android.model.UserParam;
import java.io.File;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes2.dex */
public interface GalaxyFDSClient {
    boolean doesObjectExist(String str, String str2) throws GalaxyFDSClientException;

    FDSObject getObject(String str, long j, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException;

    FDSObject getObject(String str, String str2) throws GalaxyFDSClientException;

    FDSObject getObject(String str, String str2, long j, List<UserParam> list) throws GalaxyFDSClientException;

    FDSObject getObject(String str, String str2, long j, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException;

    FDSObject getObject(String str, String str2, long j, List<UserParam> list, ProgressListener progressListener, boolean z) throws GalaxyFDSClientException;

    ObjectMetadata getObject(String str, File file, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException;

    ObjectMetadata getObject(String str, String str2, File file) throws GalaxyFDSClientException;

    ObjectMetadata getObject(String str, String str2, File file, List<UserParam> list) throws GalaxyFDSClientException;

    ObjectMetadata getObject(String str, String str2, File file, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException;

    ObjectMetadata getObject(String str, String str2, File file, List<UserParam> list, ProgressListener progressListener, boolean z) throws GalaxyFDSClientException;

    PutObjectResult putObject(String str, File file) throws GalaxyFDSClientException;

    PutObjectResult putObject(String str, File file, List<UserParam> list) throws GalaxyFDSClientException;

    PutObjectResult putObject(String str, File file, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException;

    PutObjectResult putObject(String str, InputStream inputStream, ObjectMetadata objectMetadata) throws GalaxyFDSClientException;

    PutObjectResult putObject(String str, InputStream inputStream, ObjectMetadata objectMetadata, List<UserParam> list) throws GalaxyFDSClientException;

    PutObjectResult putObject(String str, InputStream inputStream, ObjectMetadata objectMetadata, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException;

    PutObjectResult putObject(String str, String str2, File file) throws GalaxyFDSClientException;

    PutObjectResult putObject(String str, String str2, File file, List<UserParam> list) throws GalaxyFDSClientException;

    PutObjectResult putObject(String str, String str2, File file, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException;

    PutObjectResult putObject(String str, String str2, InputStream inputStream, ObjectMetadata objectMetadata) throws GalaxyFDSClientException;

    PutObjectResult putObject(String str, String str2, InputStream inputStream, ObjectMetadata objectMetadata, List<UserParam> list) throws GalaxyFDSClientException;

    PutObjectResult putObject(String str, String str2, InputStream inputStream, ObjectMetadata objectMetadata, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException;
}
