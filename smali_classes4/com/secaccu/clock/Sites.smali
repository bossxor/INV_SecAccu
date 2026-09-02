.class public final Lcom/secaccu/clock/Sites;
.super Ljava/lang/Object;
.source "Sites.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSites.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sites.kt\ncom/secaccu/clock/Sites\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n1549#2:68\n1620#2,3:69\n766#2:72\n857#2,2:73\n288#2,2:75\n*S KotlinDebug\n*F\n+ 1 Sites.kt\ncom/secaccu/clock/Sites\n*L\n38#1:68\n38#1:69,3\n39#1:72\n39#1:73,2\n43#1:75,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\n2\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nJ\u000e\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/secaccu/clock/Sites;",
        "",
        "()V",
        "builtin",
        "",
        "Lcom/secaccu/clock/TimeSite;",
        "getBuiltin",
        "()Ljava/util/List;",
        "byId",
        "id",
        "",
        "favorites",
        "combined",
        "kindFor",
        "Lcom/secaccu/clock/SyncKind;",
        "url",
        "normalizeUrl",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/secaccu/clock/Sites;

.field private static final builtin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/secaccu/clock/TimeSite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/secaccu/clock/Sites;

    invoke-direct {v0}, Lcom/secaccu/clock/Sites;-><init>()V

    sput-object v0, Lcom/secaccu/clock/Sites;->INSTANCE:Lcom/secaccu/clock/Sites;

    .line 19
    nop

    .line 20
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/secaccu/clock/TimeSite;

    new-instance v10, Lcom/secaccu/clock/TimeSite;

    sget-object v5, Lcom/secaccu/clock/SyncKind;->HTTP_DATE:Lcom/secaccu/clock/SyncKind;

    const/16 v8, 0x20

    const/4 v9, 0x0

    const-string v2, "interpark"

    const-string v3, "NOL \ud2f0\ucf13 (\uc778\ud130\ud30c\ud06c)"

    const-string v4, "https://api-ticketfront.interpark.com/"

    const-string v6, "\ud2f0\ucf13"

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    aput-object v10, v0, v1

    .line 21
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v15, Lcom/secaccu/clock/SyncKind;->HTTP_DATE:Lcom/secaccu/clock/SyncKind;

    const/16 v18, 0x20

    const/16 v19, 0x0

    const-string v12, "yes24"

    const-string v13, "YES24 \ud2f0\ucf13"

    const-string v14, "https://ticket.yes24.com/"

    const-string v16, "\ud2f0\ucf13"

    const/16 v17, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 20
    nop

    .line 22
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v7, Lcom/secaccu/clock/SyncKind;->HTTP_DATE:Lcom/secaccu/clock/SyncKind;

    const/16 v10, 0x20

    const/4 v11, 0x0

    const-string v4, "melon"

    const-string v5, "\uba5c\ub860\ud2f0\ucf13"

    const-string v6, "https://ticket.melon.com/"

    const-string v8, "\ud2f0\ucf13"

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 20
    nop

    .line 23
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v7, Lcom/secaccu/clock/SyncKind;->JSON_MILLIS:Lcom/secaccu/clock/SyncKind;

    const-string v4, "ticketlink"

    const-string v5, "\ud2f0\ucf13\ub9c1\ud06c"

    const-string v6, "https://mapi.ticketlink.co.kr/mapi/date/now"

    const-string v8, "\ud2f0\ucf13"

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 20
    nop

    .line 24
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v7, Lcom/secaccu/clock/SyncKind;->HTTP_DATE:Lcom/secaccu/clock/SyncKind;

    const-string v4, "coupangplay"

    const-string v5, "\ucfe0\ud321\ud50c\ub808\uc774"

    const-string v6, "https://www.coupangplay.com/"

    const-string v8, "\ud2f0\ucf13"

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 20
    nop

    .line 25
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v7, Lcom/secaccu/clock/SyncKind;->HTTP_DATE:Lcom/secaccu/clock/SyncKind;

    const-string v4, "weverse"

    const-string v5, "Weverse Concerts"

    const-string v6, "https://weverse.io/"

    const-string v8, "\ud2f0\ucf13"

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 20
    nop

    .line 26
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v7, Lcom/secaccu/clock/SyncKind;->HTTP_DATE:Lcom/secaccu/clock/SyncKind;

    const-string v4, "weverseshop"

    const-string v5, "Weverse Shop"

    const-string v6, "https://shop.weverse.io/"

    const-string v8, "\ud2f0\ucf13"

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 20
    nop

    .line 27
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v7, Lcom/secaccu/clock/SyncKind;->HTTP_DATE:Lcom/secaccu/clock/SyncKind;

    const-string v4, "naver"

    const-string v5, "\ub124\uc774\ubc84 \uc608\uc57d"

    const-string v6, "https://booking.naver.com/"

    const-string v8, "\ud2f0\ucf13"

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 20
    nop

    .line 28
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v7, Lcom/secaccu/clock/SyncKind;->HTTP_DATE:Lcom/secaccu/clock/SyncKind;

    const-string v4, "cgv"

    const-string v5, "CGV"

    const-string v6, "https://cgv.co.kr/cnm/movieBook"

    const-string v8, "\uc601\ud654\u00b7\ud14c\ub9c8\ud30c\ud06c"

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 20
    nop

    .line 29
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v7, Lcom/secaccu/clock/SyncKind;->HTTP_DATE:Lcom/secaccu/clock/SyncKind;

    const-string v4, "lottecinema"

    const-string v5, "\ub86f\ub370\uc2dc\ub124\ub9c8"

    const-string v6, "https://www.lottecinema.co.kr/NLCHS/Ticketing"

    const-string v8, "\uc601\ud654\u00b7\ud14c\ub9c8\ud30c\ud06c"

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 20
    nop

    .line 30
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v7, Lcom/secaccu/clock/SyncKind;->HTTP_DATE:Lcom/secaccu/clock/SyncKind;

    const-string v4, "megabox"

    const-string v5, "\uba54\uac00\ubc15\uc2a4"

    const-string v6, "https://www.megabox.co.kr/booking"

    const-string v8, "\uc601\ud654\u00b7\ud14c\ub9c8\ud30c\ud06c"

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 20
    nop

    .line 31
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v7, Lcom/secaccu/clock/SyncKind;->HTTP_DATE:Lcom/secaccu/clock/SyncKind;

    const-string v4, "everland"

    const-string v5, "\uc5d0\ubc84\ub79c\ub4dc"

    const-string v6, "https://reservation.everland.com/"

    const-string v8, "\uc601\ud654\u00b7\ud14c\ub9c8\ud30c\ud06c"

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 20
    nop

    .line 32
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v7, Lcom/secaccu/clock/SyncKind;->NTP:Lcom/secaccu/clock/SyncKind;

    const-string v4, "kriss"

    const-string v5, "KRISS \ub300\ud55c\ubbfc\uad6d \ud45c\uc900\uc2dc"

    const-string v6, "ntp://ntp.kriss.re.kr"

    const-string v8, "\ud45c\uc900\uc2dc"

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 20
    nop

    .line 33
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v7, Lcom/secaccu/clock/SyncKind;->NTP:Lcom/secaccu/clock/SyncKind;

    const-string v4, "google-ntp"

    const-string v5, "Google NTP"

    const-string v6, "ntp://time.google.com"

    const-string v8, "\ud45c\uc900\uc2dc"

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 20
    nop

    .line 34
    new-instance v1, Lcom/secaccu/clock/TimeSite;

    sget-object v7, Lcom/secaccu/clock/SyncKind;->NTP:Lcom/secaccu/clock/SyncKind;

    const-string v4, "cloudflare"

    const-string v5, "Cloudflare Time"

    const-string v6, "ntp://time.cloudflare.com"

    const-string v8, "\ud45c\uc900\uc2dc"

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 20
    nop

    .line 19
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/secaccu/clock/Sites;->builtin:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic byId$default(Lcom/secaccu/clock/Sites;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/secaccu/clock/TimeSite;
    .locals 0

    .line 42
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/secaccu/clock/Sites;->byId(Ljava/lang/String;Ljava/util/List;)Lcom/secaccu/clock/TimeSite;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final byId(Ljava/lang/String;Ljava/util/List;)Lcom/secaccu/clock/TimeSite;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "favorites"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/secaccu/clock/TimeSite;",
            ">;)",
            "Lcom/secaccu/clock/TimeSite;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favorites"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/secaccu/clock/Sites;->combined(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 75
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/secaccu/clock/TimeSite;

    .local v4, "it":Lcom/secaccu/clock/TimeSite;
    const/4 v5, 0x0

    .line 43
    .local v5, "$i$a$-firstOrNull-Sites$byId$1":I
    invoke-virtual {v4}, Lcom/secaccu/clock/TimeSite;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 75
    .end local v4    # "it":Lcom/secaccu/clock/TimeSite;
    .end local v5    # "$i$a$-firstOrNull-Sites$byId$1":I
    if-eqz v4, :cond_0

    goto :goto_0

    .line 76
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v3, Lcom/secaccu/clock/TimeSite;

    .line 43
    return-object v3
.end method

.method public final combined(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .param p1, "favorites"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/secaccu/clock/TimeSite;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/secaccu/clock/TimeSite;",
            ">;"
        }
    .end annotation

    const-string v0, "favorites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 68
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 69
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "toLowerCase(...)"

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 70
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v6

    check-cast v8, Lcom/secaccu/clock/TimeSite;

    .local v8, "it":Lcom/secaccu/clock/TimeSite;
    const/4 v9, 0x0

    .line 38
    .local v9, "$i$a$-map-Sites$combined$favoriteUrls$1":I
    invoke-virtual {v8}, Lcom/secaccu/clock/TimeSite;->getUrl()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .end local v8    # "it":Lcom/secaccu/clock/TimeSite;
    .end local v9    # "$i$a$-map-Sites$combined$favoriteUrls$1":I
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 68
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 38
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 39
    .local v0, "favoriteUrls":Ljava/util/Set;
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lcom/secaccu/clock/Sites;->builtin:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 72
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 73
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/secaccu/clock/TimeSite;

    .local v10, "it":Lcom/secaccu/clock/TimeSite;
    const/4 v11, 0x0

    .line 39
    .local v11, "$i$a$-filter-Sites$combined$1":I
    invoke-virtual {v10}, Lcom/secaccu/clock/TimeSite;->getUrl()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 73
    .end local v10    # "it":Lcom/secaccu/clock/TimeSite;
    .end local v11    # "$i$a$-filter-Sites$combined$1":I
    xor-int/lit8 v10, v12, 0x1

    if-eqz v10, :cond_1

    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 72
    nop

    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    check-cast v4, Ljava/lang/Iterable;

    .line 39
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final getBuiltin()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/secaccu/clock/TimeSite;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/secaccu/clock/Sites;->builtin:Ljava/util/List;

    return-object v0
.end method

.method public final kindFor(Ljava/lang/String;)Lcom/secaccu/clock/SyncKind;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "value":Ljava/lang/String;
    nop

    .line 49
    const-string v1, "ntp://"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/secaccu/clock/SyncKind;->NTP:Lcom/secaccu/clock/SyncKind;

    goto :goto_0

    .line 50
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "ticketlink.co.kr"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "date/now"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/secaccu/clock/SyncKind;->JSON_MILLIS:Lcom/secaccu/clock/SyncKind;

    goto :goto_0

    .line 52
    :cond_1
    sget-object v1, Lcom/secaccu/clock/SyncKind;->HTTP_DATE:Lcom/secaccu/clock/SyncKind;

    .line 48
    :goto_0
    return-object v1
.end method

.method public final normalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "trimmed":Ljava/lang/String;
    const-string v1, "ntp://"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    const-string v1, "https://"

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    const-string v3, "http://"

    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 62
    :cond_1
    :goto_0
    return-object v0
.end method
