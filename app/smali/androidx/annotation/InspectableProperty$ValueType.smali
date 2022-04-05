.class public final enum Landroidx/annotation/InspectableProperty$ValueType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/InspectableProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/annotation/InspectableProperty$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/annotation/InspectableProperty$ValueType;

.field public static final enum b:Landroidx/annotation/InspectableProperty$ValueType;

.field public static final enum c:Landroidx/annotation/InspectableProperty$ValueType;

.field public static final enum d:Landroidx/annotation/InspectableProperty$ValueType;

.field public static final enum e:Landroidx/annotation/InspectableProperty$ValueType;

.field public static final enum f:Landroidx/annotation/InspectableProperty$ValueType;

.field public static final enum g:Landroidx/annotation/InspectableProperty$ValueType;

.field private static final synthetic h:[Landroidx/annotation/InspectableProperty$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroidx/annotation/InspectableProperty$ValueType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$ValueType;->a:Landroidx/annotation/InspectableProperty$ValueType;

    new-instance v0, Landroidx/annotation/InspectableProperty$ValueType;

    const/4 v2, 0x1

    const-string v3, "INFERRED"

    invoke-direct {v0, v3, v2}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$ValueType;->b:Landroidx/annotation/InspectableProperty$ValueType;

    new-instance v0, Landroidx/annotation/InspectableProperty$ValueType;

    const/4 v3, 0x2

    const-string v4, "INT_ENUM"

    invoke-direct {v0, v4, v3}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$ValueType;->c:Landroidx/annotation/InspectableProperty$ValueType;

    new-instance v0, Landroidx/annotation/InspectableProperty$ValueType;

    const/4 v4, 0x3

    const-string v5, "INT_FLAG"

    invoke-direct {v0, v5, v4}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$ValueType;->d:Landroidx/annotation/InspectableProperty$ValueType;

    new-instance v0, Landroidx/annotation/InspectableProperty$ValueType;

    const/4 v5, 0x4

    const-string v6, "COLOR"

    invoke-direct {v0, v6, v5}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$ValueType;->e:Landroidx/annotation/InspectableProperty$ValueType;

    new-instance v0, Landroidx/annotation/InspectableProperty$ValueType;

    const/4 v6, 0x5

    const-string v7, "GRAVITY"

    invoke-direct {v0, v7, v6}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$ValueType;->f:Landroidx/annotation/InspectableProperty$ValueType;

    new-instance v0, Landroidx/annotation/InspectableProperty$ValueType;

    const/4 v7, 0x6

    const-string v8, "RESOURCE_ID"

    invoke-direct {v0, v8, v7}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$ValueType;->g:Landroidx/annotation/InspectableProperty$ValueType;

    const/4 v8, 0x7

    new-array v8, v8, [Landroidx/annotation/InspectableProperty$ValueType;

    sget-object v9, Landroidx/annotation/InspectableProperty$ValueType;->a:Landroidx/annotation/InspectableProperty$ValueType;

    aput-object v9, v8, v1

    sget-object v1, Landroidx/annotation/InspectableProperty$ValueType;->b:Landroidx/annotation/InspectableProperty$ValueType;

    aput-object v1, v8, v2

    sget-object v1, Landroidx/annotation/InspectableProperty$ValueType;->c:Landroidx/annotation/InspectableProperty$ValueType;

    aput-object v1, v8, v3

    sget-object v1, Landroidx/annotation/InspectableProperty$ValueType;->d:Landroidx/annotation/InspectableProperty$ValueType;

    aput-object v1, v8, v4

    sget-object v1, Landroidx/annotation/InspectableProperty$ValueType;->e:Landroidx/annotation/InspectableProperty$ValueType;

    aput-object v1, v8, v5

    sget-object v1, Landroidx/annotation/InspectableProperty$ValueType;->f:Landroidx/annotation/InspectableProperty$ValueType;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Landroidx/annotation/InspectableProperty$ValueType;->h:[Landroidx/annotation/InspectableProperty$ValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/InspectableProperty$ValueType;
    .locals 1

    const-class v0, Landroidx/annotation/InspectableProperty$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/annotation/InspectableProperty$ValueType;

    return-object p0
.end method

.method public static values()[Landroidx/annotation/InspectableProperty$ValueType;
    .locals 1

    sget-object v0, Landroidx/annotation/InspectableProperty$ValueType;->h:[Landroidx/annotation/InspectableProperty$ValueType;

    invoke-virtual {v0}, [Landroidx/annotation/InspectableProperty$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/annotation/InspectableProperty$ValueType;

    return-object v0
.end method
