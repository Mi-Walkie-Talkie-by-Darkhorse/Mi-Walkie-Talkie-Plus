.class public Lcom/mi/mimsgsdk/utils/NetworkUtilsCallback;
.super Ljava/lang/Object;
.source "NetworkUtilsCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public continueDownloading(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->isResourceDownloading(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
