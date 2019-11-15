.class Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$3;
.super Ljava/lang/Object;
.source "UpdateMcuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$3;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "type"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "version"

    sget v2, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "filePath"

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$3;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->e(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$3;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->f(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/update/dolphin/l;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/update/dolphin/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
