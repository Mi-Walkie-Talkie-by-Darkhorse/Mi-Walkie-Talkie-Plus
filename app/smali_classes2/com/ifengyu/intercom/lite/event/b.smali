.class public Lcom/ifengyu/intercom/lite/event/b;
.super Ljava/lang/Object;


# static fields
.field public static b:I = 0x0

.field public static c:I = 0x2


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ifengyu/intercom/lite/event/b;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/lite/event/b;->a:I

    return v0
.end method
