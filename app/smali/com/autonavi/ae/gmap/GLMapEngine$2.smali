.class Lcom/autonavi/ae/gmap/GLMapEngine$2;
.super Ljava/lang/Object;
.source "GLMapEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/ae/gmap/GLMapEngine;->processRequiredData(ILjava/util/List;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

.field final synthetic val$engineID:I


# direct methods
.method constructor <init>(Lcom/autonavi/ae/gmap/GLMapEngine;I)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$2;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    iput p2, p0, Lcom/autonavi/ae/gmap/GLMapEngine$2;->val$engineID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$2;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$2;->val$engineID:I

    const/16 v2, 0x1389

    const/16 v3, 0x3ea

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    return-void
.end method
