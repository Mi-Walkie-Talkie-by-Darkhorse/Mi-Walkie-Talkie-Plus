.class public final enum Lcom/afollestad/materialdialogs/Theme;
.super Ljava/lang/Enum;
.source "Theme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/afollestad/materialdialogs/Theme;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/afollestad/materialdialogs/Theme;

.field public static final enum b:Lcom/afollestad/materialdialogs/Theme;

.field private static final synthetic c:[Lcom/afollestad/materialdialogs/Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/afollestad/materialdialogs/Theme;

    const/4 v1, 0x0

    const-string v2, "LIGHT"

    invoke-direct {v0, v2, v1}, Lcom/afollestad/materialdialogs/Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/Theme;->a:Lcom/afollestad/materialdialogs/Theme;

    .line 2
    new-instance v0, Lcom/afollestad/materialdialogs/Theme;

    const/4 v2, 0x1

    const-string v3, "DARK"

    invoke-direct {v0, v3, v2}, Lcom/afollestad/materialdialogs/Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/Theme;->b:Lcom/afollestad/materialdialogs/Theme;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/afollestad/materialdialogs/Theme;

    .line 3
    sget-object v4, Lcom/afollestad/materialdialogs/Theme;->a:Lcom/afollestad/materialdialogs/Theme;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/afollestad/materialdialogs/Theme;->c:[Lcom/afollestad/materialdialogs/Theme;

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

.method public static valueOf(Ljava/lang/String;)Lcom/afollestad/materialdialogs/Theme;
    .locals 1

    .line 1
    const-class v0, Lcom/afollestad/materialdialogs/Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/afollestad/materialdialogs/Theme;

    return-object p0
.end method

.method public static values()[Lcom/afollestad/materialdialogs/Theme;
    .locals 1

    .line 1
    sget-object v0, Lcom/afollestad/materialdialogs/Theme;->c:[Lcom/afollestad/materialdialogs/Theme;

    invoke-virtual {v0}, [Lcom/afollestad/materialdialogs/Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/afollestad/materialdialogs/Theme;

    return-object v0
.end method
