.class Lcom/mi/mimsgsdk/upload/Ks3FileUploader$1;
.super Lcom/ksyun/ks3/services/h;
.source "Ks3FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->getDefaultClient(Landroid/content/Context;)Lcom/ksyun/ks3/services/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$1;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-direct {p0}, Lcom/ksyun/ks3/services/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculateAuthWithServerDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ksyun/ks3/services/c;
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$1;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$000(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$1;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v1}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$100(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ksyun/ks3/services/c;

    invoke-direct {v2, v1, v0}, Lcom/ksyun/ks3/services/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
