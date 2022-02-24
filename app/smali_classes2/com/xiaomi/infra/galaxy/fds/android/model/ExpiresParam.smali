.class public Lcom/xiaomi/infra/galaxy/fds/android/model/ExpiresParam;
.super Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;
.source "ExpiresParam.java"


# static fields
.field private static final EXPIRES:Ljava/lang/String; = "expires"


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;->params:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "expires"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
