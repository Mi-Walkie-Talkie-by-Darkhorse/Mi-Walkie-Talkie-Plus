.class Lcom/autonavi/ae/gmap/GLMapEngine$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/ae/gmap/GLMapEngine;->UpdateStyleOrIcons(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

.field final synthetic val$engineID:I

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$nType:I


# direct methods
.method constructor <init>(Lcom/autonavi/ae/gmap/GLMapEngine;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$3;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    iput p2, p0, Lcom/autonavi/ae/gmap/GLMapEngine$3;->val$engineID:I

    iput-object p3, p0, Lcom/autonavi/ae/gmap/GLMapEngine$3;->val$fileName:Ljava/lang/String;

    iput p4, p0, Lcom/autonavi/ae/gmap/GLMapEngine$3;->val$nType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$3;->val$engineID:I

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$3;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$100(Lcom/autonavi/ae/gmap/GLMapEngine;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine$3;->val$fileName:Ljava/lang/String;

    iget v4, p0, Lcom/autonavi/ae/gmap/GLMapEngine$3;->val$nType:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$200(IJLjava/lang/String;I)V

    return-void
.end method
