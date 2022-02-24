.class public final enum Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;
.super Ljava/lang/Enum;
.source "ProgressCircle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

.field public static final enum b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

.field public static final enum c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

.field public static final enum d:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

.field private static final synthetic e:[Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    const/4 v1, 0x0

    const-string v2, "START"

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    const/4 v2, 0x1

    const-string v3, "UPDATING"

    invoke-direct {v0, v3, v2}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    const/4 v3, 0x2

    const-string v4, "FAILURE"

    invoke-direct {v0, v4, v3}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    const/4 v4, 0x3

    const-string v5, "SUCCESS"

    invoke-direct {v0, v5, v4}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->d:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    .line 2
    sget-object v6, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    aput-object v6, v5, v1

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    aput-object v1, v5, v2

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->e:[Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->e:[Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    return-object v0
.end method
