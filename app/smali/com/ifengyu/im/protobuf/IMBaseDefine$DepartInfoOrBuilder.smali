.class public interface abstract Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfoOrBuilder;
.super Ljava/lang/Object;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DepartInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getDeptId()I
.end method

.method public abstract getDeptName()Ljava/lang/String;
.end method

.method public abstract getDeptNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDeptStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;
.end method

.method public abstract getParentDeptId()I
.end method

.method public abstract getPriority()I
.end method

.method public abstract hasDeptId()Z
.end method

.method public abstract hasDeptName()Z
.end method

.method public abstract hasDeptStatus()Z
.end method

.method public abstract hasParentDeptId()Z
.end method

.method public abstract hasPriority()Z
.end method
