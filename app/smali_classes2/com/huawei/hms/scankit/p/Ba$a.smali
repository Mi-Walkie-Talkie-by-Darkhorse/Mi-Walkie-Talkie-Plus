.class public Lcom/huawei/hms/scankit/p/Ba$a;
.super Ljava/lang/Object;
.source "CameraMeteringData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/Rect;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Ba$a;->a:Landroid/graphics/Rect;

    .line 3
    iput p2, p0, Lcom/huawei/hms/scankit/p/Ba$a;->b:I

    return-void
.end method
