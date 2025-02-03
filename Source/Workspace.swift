@preconcurrency import ProjectDescription

let projects: [PathProvider] = [
    Projects.DSA.all,
    Projects.Patterns.ObjectOriented.abstractFactory,
    Projects.Patterns.ObjectOriented.adapter,
    Projects.Patterns.ObjectOriented.bridge,
    Projects.Patterns.ObjectOriented.builder,
    Projects.Patterns.ObjectOriented.chainOfResponsibility,
    Projects.Patterns.ObjectOriented.command,
    Projects.Patterns.ObjectOriented.composite,
    Projects.Patterns.ObjectOriented.decorator,
    Projects.Patterns.ObjectOriented.facade,
    Projects.Patterns.ObjectOriented.factoryMethod,
    Projects.Patterns.ObjectOriented.iterator,
    Projects.Patterns.ObjectOriented.mediator,
    Projects.Patterns.ObjectOriented.memento,
    Projects.Patterns.ObjectOriented.observer,
    Projects.Patterns.ObjectOriented.prototype,
    Projects.Patterns.ObjectOriented.proxy,
    Projects.Patterns.ObjectOriented.singleton,
    Projects.Patterns.ObjectOriented.state,
    Projects.Patterns.ObjectOriented.strategy,
    Projects.Patterns.ObjectOriented.templateMethod,
    Projects.Patterns.ObjectOriented.visitor,
]

protocol PathProvider {
    var path: Path { get }
}

enum Projects: PathProvider {
    case all

    var path: Path {
        Path("Projects/**")
    }

    enum Composition: PathProvider {
        case all

        var path: Path {
            switch self {
            case .all: return Path("Projects/Composition/**")
            }
        }
    }

    enum Concepts: PathProvider {
        case all

        var path: Path {
            switch self {
            case .all: return Path("Projects/Concepts/**")
            }
        }
    }

    enum DSA: PathProvider {
        case all

        var path: Path {
            switch self {
            case .all: return Path("Projects/DSA/**")
            }
        }
    }

    enum Experiments: PathProvider {
        case all

        var path: Path {
            switch self {
            case .all: return Path("Projects/Experiments/**")
            }
        }
    }

    enum Patterns: PathProvider {
        case all

        var path: Path {
            switch self {
            case .all: return Path("Projects/Patterns/**")
            }
        }

        enum ObjectOriented: PathProvider {
            case all
            case abstractFactory
            case adapter
            case bridge
            case builder
            case chainOfResponsibility
            case command
            case composite
            case decorator
            case facade
            case factoryMethod
            case iterator
            case mediator
            case memento
            case observer
            case prototype
            case proxy
            case singleton
            case state
            case strategy
            case templateMethod
            case visitor

            var path: Path {
                switch self {
                case .all: return Path("Projects/Patterns/ObjectOriented/**")
                case .abstractFactory: return Path("Projects/Patterns/ObjectOriented/AbstractFactory/**")
                case .adapter: return Path("Projects/Patterns/ObjectOriented/Adapter/**")
                case .bridge: return Path("Projects/Patterns/ObjectOriented/Bridge/**")
                case .builder: return Path("Projects/Patterns/ObjectOriented/Builder/**")
                case .chainOfResponsibility: return Path("Projects/Patterns/ObjectOriented/ChainOfResponsibility/**")
                case .command: return Path("Projects/Patterns/ObjectOriented/Command/**")
                case .composite: return Path("Projects/Patterns/ObjectOriented/Composite/**")
                case .decorator: return Path("Projects/Patterns/ObjectOriented/Decorator/**")
                case .facade: return Path("Projects/Patterns/ObjectOriented/Facade/**")
                case .factoryMethod: return Path("Projects/Patterns/ObjectOriented/FactoryMethod/**")
                case .iterator: return Path("Projects/Patterns/ObjectOriented/Iterator/**")
                case .mediator: return Path("Projects/Patterns/ObjectOriented/Mediator/**")
                case .memento: return Path("Projects/Patterns/ObjectOriented/Memento/**")
                case .observer: return Path("Projects/Patterns/ObjectOriented/Observer/**")
                case .prototype: return Path("Projects/Patterns/ObjectOriented/Prototype/**")
                case .proxy: return Path("Projects/Patterns/ObjectOriented/Proxy/**")
                case .singleton: return Path("Projects/Patterns/ObjectOriented/Singleton/**")
                case .state: return Path("Projects/Patterns/ObjectOriented/State/**")
                case .strategy: return Path("Projects/Patterns/ObjectOriented/Strategy/**")
                case .templateMethod: return Path("Projects/Patterns/ObjectOriented/TemplateMethod/**")
                case .visitor: return Path("Projects/Patterns/ObjectOriented/Visitor/**")
                }
            }
        }
    }

    enum SampleCode: PathProvider {
        case all

        var path: Path {
            switch self {
            case .all: return Path("Projects/Sample Code/**")
            }
        }
    }
}

let workspace = Workspace(
    name: "Nano",
    projects: projects.map { $0.path }
)
