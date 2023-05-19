.class Lcom/ifengyu/intercom/o/c/c$a;
.super Ljava/lang/Object;
.source "FileCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/o/c/c;->i(Lokhttp3/Response;I)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lcom/ifengyu/intercom/o/c/c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/o/c/c;JJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/o/c/c$a;->d:Lcom/ifengyu/intercom/o/c/c;

    iput-wide p2, p0, Lcom/ifengyu/intercom/o/c/c$a;->a:J

    iput-wide p4, p0, Lcom/ifengyu/intercom/o/c/c$a;->b:J

    iput p6, p0, Lcom/ifengyu/intercom/o/c/c$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/o/c/c$a;->d:Lcom/ifengyu/intercom/o/c/c;

    iget-wide v1, p0, Lcom/ifengyu/intercom/o/c/c$a;->a:J

    long-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    iget-wide v2, p0, Lcom/ifengyu/intercom/o/c/c$a;->b:J

    long-to-float v4, v2

    div-float/2addr v1, v4

    iget v4, p0, Lcom/ifengyu/intercom/o/c/c$a;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/o/c/a;->a(FJI)V

    return-void
.end method
