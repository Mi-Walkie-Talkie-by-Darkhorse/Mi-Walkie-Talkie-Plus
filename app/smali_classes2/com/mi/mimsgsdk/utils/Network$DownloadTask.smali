.class Lcom/mi/mimsgsdk/utils/Network$DownloadTask;
.super Landroid/os/AsyncTask;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/utils/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private bOnlyWifi:Z

.field private handler:Lcom/mi/mimsgsdk/utils/Network$PostDownloadHandler;

.field private mContext:Landroid/content/Context;

.field private output:Ljava/io/OutputStream;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mi/mimsgsdk/utils/Network$PostDownloadHandler;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mi/mimsgsdk/utils/Network$DownloadTask;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mi/mimsgsdk/utils/Network$PostDownloadHandler;ZLandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mi/mimsgsdk/utils/Network$PostDownloadHandler;ZLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/mi/mimsgsdk/utils/Network$DownloadTask;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/mi/mimsgsdk/utils/Network$DownloadTask;->output:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/mi/mimsgsdk/utils/Network$DownloadTask;->handler:Lcom/mi/mimsgsdk/utils/Network$PostDownloadHandler;

    iput-boolean p4, p0, Lcom/mi/mimsgsdk/utils/Network$DownloadTask;->bOnlyWifi:Z

    iput-object p5, p0, Lcom/mi/mimsgsdk/utils/Network$DownloadTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/mi/mimsgsdk/utils/Network$DownloadTask;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/mi/mimsgsdk/utils/Network$DownloadTask;->output:Ljava/io/OutputStream;

    iget-boolean v2, p0, Lcom/mi/mimsgsdk/utils/Network$DownloadTask;->bOnlyWifi:Z

    iget-object v3, p0, Lcom/mi/mimsgsdk/utils/Network$DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/utils/Network;->downloadFile(Ljava/lang/String;Ljava/io/OutputStream;ZLandroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/utils/Network$DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/utils/Network$DownloadTask;->handler:Lcom/mi/mimsgsdk/utils/Network$PostDownloadHandler;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mi/mimsgsdk/utils/Network$PostDownloadHandler;->OnPostDownload(Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/utils/Network$DownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
