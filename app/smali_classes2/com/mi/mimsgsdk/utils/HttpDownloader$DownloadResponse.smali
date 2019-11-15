.class public Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;
.super Ljava/lang/Object;
.source "HttpDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/utils/HttpDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadResponse"
.end annotation


# instance fields
.field public downloadBytes:I

.field public e:Ljava/lang/Exception;

.field public responseCode:I

.field public result:I


# direct methods
.method public constructor <init>(IIILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;->responseCode:I

    iput p2, p0, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;->result:I

    iput p3, p0, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;->downloadBytes:I

    iput-object p4, p0, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;->e:Ljava/lang/Exception;

    return-void
.end method
